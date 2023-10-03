# Amazon DynamoDB Table
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table

variable "attribute" {
  description = "Set of nested attribute definitions."
  type        = list(any)
  default     = []
}

variable "billing_mode" {
  description = "Controls how you are charged for read and write throughput and how you manage capacity."
  type        = string
  default     = "PROVISIONED"
}

variable "deletion_protection_enabled" {
  description = "Enables deletion protection for table."
  type        = bool
  default     = false
}

variable "hash_key" {
  description = "Attribute to use as the hash (partition) key."
  type        = string
}

variable "name" {
  description = "Unique within a region name of the table."
  type        = string
}

variable "point_in_time_recovery" {
  description = "Enable point-in-time recovery options."
  type        = bool
  default     = false
}

variable "range_key" {
  description = "Attribute to use as the range (sort) key."
  type        = string
  default     = null
}

variable "read_capacity" {
  description = "Number of read units for this table."
  type        = number
  default     = null
}

variable "stream_enabled" {
  description = "Whether Streams are enabled."
  type        = bool
  default     = false
}

variable "stream_view_type" {
  description = "When an item in the table is modified, StreamViewType determines what information is written to the table's stream."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to populate on the created table."
  type        = map(string)
  default     = {}
}

variable "ttl" {
  description = "Configuration block for TTL."
  type        = list(any)
  default     = []
}

variable "write_capacity" {
  description = "Number of write units for this table."
  type        = number
  default     = null
}
