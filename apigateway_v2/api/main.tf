# --------------------------------------------------------------------------------
# Amazon API Gateway V2 API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api
# --------------------------------------------------------------------------------

resource "aws_apigatewayv2_api" "this" {
  api_key_selection_expression = var.api_key_selection_expression
  description                  = var.description
  name                         = var.name
  protocol_type                = var.protocol_type
  route_selection_expression   = var.route_selection_expression
  tags                         = merge(var.tags, { "Name" = var.name })
}
