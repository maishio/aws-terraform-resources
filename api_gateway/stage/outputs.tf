# --------------------------------------------------------------------------------
# Amazon API Gateway Stage
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage
# --------------------------------------------------------------------------------

output "api_gateway_stage" {
  value = aws_api_gateway_stage.this
}
