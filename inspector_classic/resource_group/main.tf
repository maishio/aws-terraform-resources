# --------------------------------------------------------------------------------
# Amazon Inspector Classic Resource Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_resource_group
# --------------------------------------------------------------------------------

resource "aws_inspector_resource_group" "this" {
  tags = var.tags
}
