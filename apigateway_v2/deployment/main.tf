# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Deployment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_deployment
# --------------------------------------------------------------------------------

resource "aws_apigatewayv2_deployment" "this" {
  api_id      = var.api_id
  description = var.description
  triggers    = var.triggers

  lifecycle {
    create_before_destroy = true
  }
}
