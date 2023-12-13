# --------------------------------------------------------------------------------
# Amazon API Gateway Integration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration
# --------------------------------------------------------------------------------

output "api_gateway_integration" {
  value = aws_api_gateway_integration.this
}
