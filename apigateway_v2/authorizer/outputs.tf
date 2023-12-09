# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Authorizer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_authorizer
# --------------------------------------------------------------------------------

output "apigatewayv2_authorizer" {
  description = "Amazon API Gateway V2 Authorizer resource."
  value       = aws_apigatewayv2_authorizer.this
}
