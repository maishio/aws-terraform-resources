# Amazon API Gateway V2 API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api

output "apigatewayv2_api" {
  description = "Amazon API Gateway V2 API resource."
  value       = aws_apigatewayv2_api.this
}
