# --------------------------------------------------------------------------------
# Amazon API Gateway Domain Name
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name
# --------------------------------------------------------------------------------

output "api_gateway_domain_name" {
  value = aws_api_gateway_domain_name.this
}
