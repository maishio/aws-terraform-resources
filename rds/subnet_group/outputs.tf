# --------------------------------------------------------------------------------
# Amazon RDS Subnet Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group
# --------------------------------------------------------------------------------

output "db_subnet_group" {
  value = aws_db_subnet_group.this
}
