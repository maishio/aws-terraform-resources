# --------------------------------------------------------------------------------
# Amazon RDS Subnet Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group
# --------------------------------------------------------------------------------

resource "aws_db_subnet_group" "this" {
  description = var.description
  name        = var.name
  subnet_ids  = var.subnet_ids
  tags        = merge(var.tags, { "Name" = var.name })
}
