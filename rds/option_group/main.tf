# --------------------------------------------------------------------------------
# Amazon RDS Option Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_option_group
# --------------------------------------------------------------------------------

resource "aws_db_option_group" "this" {
  name                 = var.name
  engine_name          = var.engine_name
  major_engine_version = var.major_engine_version
  tags                 = merge(var.tags, { "Name" = var.name })

  dynamic "option" {
    for_each = var.options
    content {
      db_security_group_memberships  = lookup(option.value, "db_security_group_memberships", null)
      option_name                    = option.value.option_name
      port                           = lookup(option.value, "port", null)
      version                        = lookup(option.value, "version", null)
      vpc_security_group_memberships = lookup(option.value, "vpc_security_group_memberships", null)

      dynamic "option_settings" {
        for_each = lookup(option.value, "option_settings", [])
        content {
          name  = option_settings.value.name
          value = option_settings.value.value
        }
      }
    }
  }

  lifecycle {
    create_before_destroy = true
  }

}
