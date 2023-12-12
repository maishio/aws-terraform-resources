# --------------------------------------------------------------------------------
# Amazon API Gateway Deployment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment
# --------------------------------------------------------------------------------

output "api_gateway_deployment" {
  value = aws_api_gateway_deployment.this
}
