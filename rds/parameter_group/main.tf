# --------------------------------------------------------------------------------
# Amazon RDS Parameter Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group
# --------------------------------------------------------------------------------

resource "aws_db_parameter_group" "this" {
  description = var.description
  family      = var.family
  name        = var.name
  tags        = merge(var.tags, { "Name" = var.name })

  dynamic "parameter" {
    for_each = var.parameters
    content {
      apply_method = lookup(parameter.value, "apply_method", null)
      name         = parameter.value.name
      value        = parameter.value.value
    }
  }
}
