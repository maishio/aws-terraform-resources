# --------------------------------------------------------------------------------
# Amazon API Gateway API Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key
# --------------------------------------------------------------------------------

output "api_gateway_api_key" {
  value = aws_api_gateway_api_key.this
}
