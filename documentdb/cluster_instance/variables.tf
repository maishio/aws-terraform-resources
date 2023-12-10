# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance
# --------------------------------------------------------------------------------

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "This parameter does not apply to Amazon DocumentDB."
  type        = bool
  default     = true
}

variable "availability_zone" {
  description = "The EC2 Availability Zone that the DB instance is created in."
  type        = string
  default     = null
}

variable "cluster_identifier" {
  description = " The identifier of the `aws_docdb_cluster` in which to launch this instance."
  type        = string
}

variable "enable_performance_insights" {
  description = "A value that indicates whether to enable Performance Insights for the DB Instance."
  type        = bool
  default     = false
}

variable "engine" {
  description = "The name of the database engine to be used for the DocumentDB instance."
  type        = string
  default     = "docdb"
}

variable "instance_class" {
  description = "The instance class to use."
  type        = string
}

variable "instances" {
  description = "Number of instances."
  type        = number
  default     = 1
}

variable "performance_insights_kms_key_id" {
  description = "The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key."
  type        = string
  default     = null
}

variable "preferred_maintenance_window" {
  description = "The window to perform maintenance in."
  type        = string
  default     = null
}

variable "promotion_tier" {
  type    = number
  default = 0
}

variable "tags" {
  type    = map(string)
  default = {}
}
