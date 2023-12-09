# Amazon DynamoDB Table Item
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item

output "dynamodb_table_item" {
  description = "Amazon DynamoDB Table Item resource."
  value       = aws_dynamodb_table_item.this
}
