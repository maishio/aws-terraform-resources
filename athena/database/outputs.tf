# --------------------------------------------------------------------------------
# Amazon Athena Database
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/athena_database
# --------------------------------------------------------------------------------

output "athena_database" {
  value = aws_athena_database.this
}
