# --------------------------------------------------------------------------------
# Amazon DynamoDB Table Item
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item
# --------------------------------------------------------------------------------

output "dynamodb_table_item" {
  value = aws_dynamodb_table_item.this
}
