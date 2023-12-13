# --------------------------------------------------------------------------------
# Amazon API Gateway VPC Link
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_vpc_link
# --------------------------------------------------------------------------------

resource "aws_api_gateway_vpc_link" "this" {
  description = var.description
  name        = var.name
  tags        = merge(var.tags, { "Name" = var.name })
  target_arns = var.target_arns
}
