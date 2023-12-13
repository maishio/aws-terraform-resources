# --------------------------------------------------------------------------------
# Amazon API Gateway Integration Response
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration_response
# --------------------------------------------------------------------------------

output "api_gateway_integration_response" {
  value = aws_api_gateway_integration_response.this
}
