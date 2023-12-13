# --------------------------------------------------------------------------------
# Amazon API Gateway Method Response
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response
# --------------------------------------------------------------------------------

output "api_gateway_method_response" {
  value = aws_api_gateway_method_response.this
}
