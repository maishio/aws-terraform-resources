# --------------------------------------------------------------------------------
# Amazon EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# --------------------------------------------------------------------------------

output "instance" {
  value = aws_instance.this
}
