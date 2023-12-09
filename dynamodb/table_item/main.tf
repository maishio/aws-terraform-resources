# Amazon DynamoDB Table Item
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item

resource "dynamodb_table_item" "this" {
  hash_key   = var.hash_key
  item       = templatefile(var.path, var.vars)
  range_key  = var.range_key
  table_name = var.table_name
}
