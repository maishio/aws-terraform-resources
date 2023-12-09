# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Api Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api_mapping
# --------------------------------------------------------------------------------

output "apigatewayv2_api_mapping" {
  value = aws_apigatewayv2_api_mapping.this
}
