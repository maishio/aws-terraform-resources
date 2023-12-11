# --------------------------------------------------------------------------------
# Amazon RDS Option Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_option_group
# --------------------------------------------------------------------------------

output "db_option_group" {
  value = aws_db_option_group.this
}
