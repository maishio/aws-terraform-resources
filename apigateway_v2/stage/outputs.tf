# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Stage
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_stage
# --------------------------------------------------------------------------------

output "apigatewayv2_stage" {
  value = aws_apigatewayv2_stage.this
}
