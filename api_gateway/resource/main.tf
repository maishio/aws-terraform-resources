# --------------------------------------------------------------------------------
# Amazon API Gateway Resource
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource
# --------------------------------------------------------------------------------

resource "aws_api_gateway_resource" "this" {
  parent_id   = var.parent_id
  path_part   = var.path_part
  rest_api_id = var.rest_api_id
}
