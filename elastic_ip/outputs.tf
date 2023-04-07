# Amazon EC2 Elastic IP
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

output "eip" {
  value = aws_eip.this
}
