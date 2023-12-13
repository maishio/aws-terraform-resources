# --------------------------------------------------------------------------------
# Amazon API Gateway REST API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api
# --------------------------------------------------------------------------------

resource "aws_api_gateway_rest_api" "this" {
  description = var.description
  name        = var.name
  tags        = merge(var.tags, { "Name" = var.name })

  endpoint_configuration {
    types = var.types
  }
}
