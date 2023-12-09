# Amazon DynamoDB Table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table

resource "aws_dynamodb_table" "this" {
  billing_mode                = var.billing_mode
  deletion_protection_enabled = var.deletion_protection_enabled
  hash_key                    = var.hash_key
  name                        = var.name
  range_key                   = var.range_key
  read_capacity               = var.read_capacity
  stream_enabled              = var.stream_enabled
  stream_view_type            = var.stream_view_type
  tags                        = merge(var.tags, { "Name" = var.name })
  write_capacity              = var.write_capacity

  dynamic "attribute" {
    for_each = var.attribute
    content {
      name = attribute.value.name
      type = attribute.value.type
    }
  }

  dynamic "ttl" {
    for_each = var.ttl
    content {
      enabled        = ttl.value.enabled
      attribute_name = ttl.value.attribute_name
    }
  }

  point_in_time_recovery {
    enabled = var.point_in_time_recovery
  }

  lifecycle {
    ignore_changes = [
      read_capacity,
      write_capacity
    ]
  }
}
