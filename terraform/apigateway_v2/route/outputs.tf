# Amazon API Gateway V2 Route
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_route

output "apigatewayv2_route" {
  description = "Amazon API Gateway V2 Route resource."
  value       = aws_apigatewayv2_route.this
}
