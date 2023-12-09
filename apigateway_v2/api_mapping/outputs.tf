# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Api Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api_mapping
# --------------------------------------------------------------------------------

output "apigatewayv2_api_mapping" {
  description = "Amazon API Gateway V2 API Mapping resource."
  value       = aws_apigatewayv2_api_mapping.this
}
