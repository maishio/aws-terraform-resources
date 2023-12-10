# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster Parameter Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group
# --------------------------------------------------------------------------------

resource "aws_docdb_cluster_parameter_group" "this" {
  description = var.description
  family      = var.family
  name        = var.name
  tags        = merge(var.tags, { "Name" = var.name })

  dynamic "parameter" {
    for_each = var.parameter
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }
}
