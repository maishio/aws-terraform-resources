# --------------------------------------------------------------------------------
# Application Load Balancer resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
# --------------------------------------------------------------------------------

resource "aws_alb" "this" {
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_deletion_protection       = var.enable_deletion_protection
  enable_http2                     = var.enable_http2
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  idle_timeout                     = var.idle_timeout
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

# --------------------------------------------------------------------------------
# Application Load Balancer Target Group resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group
# --------------------------------------------------------------------------------

resource "aws_alb_target_group" "this" {
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

  depends_on = [aws_alb.this]

  lifecycle {
    create_before_destroy = true
  }
}

# --------------------------------------------------------------------------------
# Application Load Balancer Listener resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener
# --------------------------------------------------------------------------------

resource "aws_alb_listener" "this" {
  certificate_arn   = var.certificate_arn
  load_balancer_arn = aws_alb.this.arn
  port              = var.listener_port
  protocol          = var.listener_protocol
  ssl_policy        = var.ssl_policy

  dynamic "default_action" {
    for_each = var.default_action
    content {
      type             = default_action.value.type
      target_group_arn = lookup(default_action.value, "target_group_arn", null)

      dynamic "authenticate_cognito" {
        for_each = lookup(default_action.value, "authenticate_cognito", [])
        content {
          user_pool_arn       = lookup(authenticate_cognito.value, "user_pool_arn", null)
          user_pool_client_id = lookup(authenticate_cognito.value, "user_pool_client_id", null)
          user_pool_domain    = lookup(authenticate_cognito.value, "user_pool_domain", null)
        }
      }
    }
  }

  depends_on = [aws_alb_target_group.this]
}

# --------------------------------------------------------------------------------
# Application Load Balancer Listener Rule resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule
# --------------------------------------------------------------------------------

resource "aws_alb_listener_rule" "this" {
  count        = var.create_alb_listener_rule ? 1 : 0
  listener_arn = aws_alb_listener.this.arn
  priority     = var.listener_rule_priority

  action {
    target_group_arn = aws_alb_target_group.this.id
    type             = var.action_type
  }

  condition {
    path_pattern {
      values = var.listener_rule_condition_values
    }
  }

  depends_on = [aws_alb_listener.this]
}

# --------------------------------------------------------------------------------
# Amazon Route53 Record resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
# --------------------------------------------------------------------------------

resource "aws_route53_record" "this" {
  name    = var.record_name
  type    = var.type
  zone_id = var.zone_id

  alias {
    evaluate_target_health = var.evaluate_target_health
    name                   = aws_alb.this.dns_name
    zone_id                = aws_alb.this.zone_id
  }
}
