# --------------------------------------------------------------------------------
# Application Load Balancer output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
# --------------------------------------------------------------------------------

output "alb" {
  value = aws_alb.this
}

# --------------------------------------------------------------------------------
# Application Load Balancer Target Group output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group
# --------------------------------------------------------------------------------

output "alb_target_group" {
  value = aws_alb_target_group.this
}

# --------------------------------------------------------------------------------
# Application Load Balancer Listener output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener
# --------------------------------------------------------------------------------

output "alb_listener" {
  value = aws_alb_listener.this
}
