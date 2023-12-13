# --------------------------------------------------------------------------------
# Amazon API Gateway REST API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api
# --------------------------------------------------------------------------------

output "api_gateway_rest_api" {
  value = aws_api_gateway_rest_api.this
}
