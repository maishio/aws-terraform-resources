# --------------------------------------------------------------------------------
# Amazon DocumentDB Subnet Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group
# --------------------------------------------------------------------------------

output "docdb_subnet_group" {
  value = aws_docdb_subnet_group.this
}
