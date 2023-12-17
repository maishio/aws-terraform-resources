# --------------------------------------------------------------------------------
# AWS Resource Groups Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourcegroups_group
# --------------------------------------------------------------------------------

resource "aws_resourcegroups_group" "this" {
  description = var.description
  name        = var.name
  tags        = merge(var.vars, { "Name" = var.name })

  resource_query {
    query = templatefile(var.path, var.vars)
  }
}
