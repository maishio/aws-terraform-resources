# Amazon API Gateway V2 Domain Name
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_domain_name

output "apigatewayv2_domain_name" {
  description = "Amazon API Gateway V2 Domain Name resource."
  value       = aws_apigatewayv2_domain_name.this
}
