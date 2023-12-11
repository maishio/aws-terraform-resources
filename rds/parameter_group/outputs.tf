# --------------------------------------------------------------------------------
# Amazon RDS Parameter Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group
# --------------------------------------------------------------------------------

output "db_parameter_group" {
  value = aws_db_parameter_group.this
}
