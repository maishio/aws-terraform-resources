# Elastic Load Balancer Listener Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule

resource "aws_lb_listener_rule" "this" {
  listener_arn = var.listener_arn
  priority     = var.priority

  action {
    target_group_arn = var.target_group_arn
    type             = var.type
  }

  condition {
    path_pattern {
      values = var.values
    }
  }
}
