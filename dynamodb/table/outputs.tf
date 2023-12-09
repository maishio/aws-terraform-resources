# --------------------------------------------------------------------------------
# Amazon DynamoDB Table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table
# --------------------------------------------------------------------------------

output "dynamodb_table" {
  value = aws_dynamodb_table.this
}
