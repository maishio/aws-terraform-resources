# --------------------------------------------------------------------------------
# Amazon API Gateway VPC Link
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_vpc_link
# --------------------------------------------------------------------------------

output "api_gateway_vpc_link" {
  value = aws_api_gateway_vpc_link.this
}
