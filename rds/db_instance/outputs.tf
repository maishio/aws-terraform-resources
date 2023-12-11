# --------------------------------------------------------------------------------
# Amazon RDS Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
# --------------------------------------------------------------------------------

output "db_instance" {
  value = aws_db_instance.this
}
