# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Deployment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_deployment
# --------------------------------------------------------------------------------

output "apigatewayv2_deployment" {
  value = aws_apigatewayv2_deployment.this
}
