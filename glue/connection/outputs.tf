# --------------------------------------------------------------------------------
# AWS Glue Connection
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_connection
# --------------------------------------------------------------------------------

output "glue_connection" {
  value = aws_glue_connection.this
}
