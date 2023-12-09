# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Api Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api_mapping
# --------------------------------------------------------------------------------

resource "aws_apigatewayv2_api_mapping" "this" {
  api_id      = var.api_id
  domain_name = var.domain_name
  stage       = var.stage
}
