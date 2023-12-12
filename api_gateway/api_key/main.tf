# --------------------------------------------------------------------------------
# Amazon API Gateway API Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key
# --------------------------------------------------------------------------------

resource "aws_api_gateway_api_key" "this" {
  description = var.description
  enabled     = var.enabled
  name        = var.name
  tags        = merge(var.tags, { "Name" = var.name })
  value       = var.value
}
