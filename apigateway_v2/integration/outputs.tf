# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Integration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration
# --------------------------------------------------------------------------------

output "apigatewayv2_integration" {
  value = aws_apigatewayv2_integration.this
}
