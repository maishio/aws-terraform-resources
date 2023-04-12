# Elastic Load Balancer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb

output "elb" {
  value = aws_lb.this
}

# Elastic Load Balancer Target Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group

output "elb_target_group" {
  value = aws_lb_target_group.this
}

# Elastic Load Balancer Listener
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener

output "elb_listener" {
  value = aws_lb_listener.this
}
