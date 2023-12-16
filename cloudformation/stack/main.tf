# --------------------------------------------------------------------------------
# AWS CloudFormation Stack
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack
# --------------------------------------------------------------------------------

resource "aws_cloudformation_stack" "this" {
  capabilities  = var.capabilities
  name          = var.name
  parameters    = var.parameters
  tags          = merge(var.tags, { "Name" = var.name })
  template_body = var.template_body
  template_url  = var.template_url
}
