# Elastic Load Balancer Listener Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule

output "elb_listener_rule" {
  value = aws_lb_listener_rule.this
}
