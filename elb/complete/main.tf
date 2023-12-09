# Elastic Load Balancer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb

resource "aws_lb" "this" {
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  enable_cross_zone_load_balancing = var.load_balancer_type == "application" ? var.enable_cross_zone_load_balancing : null
  enable_deletion_protection       = var.enable_deletion_protection
  enable_http2                     = var.load_balancer_type == "application" ? var.enable_http2 : null
  idle_timeout                     = var.load_balancer_type == "application" ? var.idle_timeout : null
  internal                         = var.internal
  ip_address_type                  = var.ip_address_type
  load_balancer_type               = var.load_balancer_type
  name                             = var.alb_name
  security_groups                  = var.load_balancer_type == "application" ? var.security_groups : null
  subnets                          = var.subnets
  tags                             = merge(var.tags, { "Name" = var.alb_name })

  dynamic "access_logs" {
    for_each = var.access_logs
    content {
      bucket  = access_logs.value.bucket
      enabled = access_logs.value.enabled
      prefix  = access_logs.value.prefix
    }
  }
}

# Elastic Load Balancer Target Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group

resource "aws_lb_target_group" "this" {
  deregistration_delay               = var.deregistration_delay
  lambda_multi_value_headers_enabled = var.lambda_multi_value_headers_enabled
  name                               = var.target_group_name
  port                               = var.target_port
  protocol                           = var.target_protocol
  proxy_protocol_v2                  = var.proxy_protocol_v2
  slow_start                         = var.slow_start
  tags                               = merge(var.tags, { "Name" = var.target_group_name })
  target_type                        = var.target_type
  vpc_id                             = var.vpc_id

  health_check {
    enabled             = var.health_check_enabled
    healthy_threshold   = var.health_check_healthy_threshold
    interval            = var.health_check_interval
    matcher             = var.health_check_matcher
    path                = var.health_check_path
    port                = var.health_check_port
    protocol            = var.health_check_protocol
    timeout             = var.health_check_timeout
    unhealthy_threshold = var.health_check_unhealthy_threshold
  }

  stickiness {
    cookie_duration = var.stickiness_cookie_duration
    enabled         = var.stickiness_enabled
    type            = var.stickiness_type
  }

  depends_on = [aws_alb.this]

  lifecycle {
    create_before_destroy = true
  }
}

# Elastic Load Balancer Listener
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener

resource "aws_lb_listener" "this" {
  certificate_arn   = var.certificate_arn
  load_balancer_arn = aws_alb.this.arn
  port              = var.listener_port
  protocol          = var.listener_protocol
  ssl_policy        = var.ssl_policy

  dynamic "default_action" {
    for_each = var.default_action
    content {
      target_group_arn = lookup(default_action.value, "target_group_arn", null)
      type             = default_action.value.type

      dynamic "authenticate_cognito" {
        for_each = lookup(default_action.value, "authenticate_cognito", [])
        content {
          user_pool_arn       = lookup(authenticate_cognito.value, "user_pool_arn", null)
          user_pool_client_id = lookup(authenticate_cognito.value, "user_pool_client_id", null)
          user_pool_domain    = lookup(authenticate_cognito.value, "user_pool_domain", null)
        }
      }

      dynamic "fixed_response" {
        for_each = lookup(default_action.value, "fixed_response", [])
        content {
          content_type = lookup(fixed_response.value, "content_type", null)
          message_body = lookup(fixed_response.value, "message_body", null)
          status_code  = lookup(fixed_response.value, "status_code", null)
        }
      }
    }
  }

  depends_on = [aws_alb_target_group.this]

  lifecycle {
    ignore_changes = [default_action]
  }
}

# Elastic Load Balancer Listener Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule

resource "aws_lb_listener_rule" "this" {
  count        = var.create_lb_listener_rule ? 1 : 0
  listener_arn = aws_alb_listener.this.arn
  priority     = var.listener_rule_priority

  action {
    target_group_arn = aws_alb_target_group.this.id
    type             = var.action_type
  }

  condition {
    path_pattern {
      values = var.values
    }
  }

  depends_on = [aws_alb_listener.this]
}
