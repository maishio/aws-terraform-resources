# --------------------------------------------------------------------------------
# Amazon VPC Internet Gateway output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
# --------------------------------------------------------------------------------

output "internet_gateway" {
  value = aws_internet_gateway.this
}
