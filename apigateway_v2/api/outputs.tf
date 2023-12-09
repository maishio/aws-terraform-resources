# --------------------------------------------------------------------------------
# Amazon API Gateway V2 API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api
# --------------------------------------------------------------------------------

output "apigatewayv2_api" {
  value = aws_apigatewayv2_api.this
}
