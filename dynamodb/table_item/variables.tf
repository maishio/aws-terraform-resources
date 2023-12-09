# Amazon DynamoDB Table Item
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table_item

variable "hash_key" {
  description = "Hash key to use for lookups and identification of the item."
  type        = string
}

variable "path" {
  description = "File path to the JSON template defining the DynamoDB table item."
  type        = string
}

variable "range_key" {
  description = "Range key to use for lookups and identification of the item."
  type        = string
  default     = null
}

variable "table_name" {
  description = "Name of the table to contain the item."
  type        = string
}

variable "vars" {
  description = "A map of variables to be substituted into the JSON template for the DynamoDB table item."
  type        = map(string)
  default     = {}
}
