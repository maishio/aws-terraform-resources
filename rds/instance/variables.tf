# --------------------------------------------------------------------------------
# Amazon RDS Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
# --------------------------------------------------------------------------------

variable "allocated_storage" {
  description = "The allocated storage in gibibytes."
  type        = number
}

variable "allow_major_version_upgrade" {
  description = "Indicates that major version upgrades are allowed."
  type        = bool
  default     = false
}

variable "apply_immediately" {
  description = "Specifies whether any database modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window."
  type        = bool
  default     = true
}

variable "backup_retention_period" {
  description = "The days to retain backups for. Must be between 0 and 35."
  type        = number
  default     = 0
}

variable "backup_window" {
  description = "The daily time range (in UTC) during which automated backups are created if they are enabled."
  type        = string
}

variable "ca_cert_identifier" {
  description = "The identifier of the CA certificate for the DB instance."
  type        = string
  default     = null
}

variable "copy_tags_to_snapshot" {
  description = "Copy all Instance tags to snapshots."
  type        = bool
  default     = false
}

variable "db_name" {
  description = "The name of the database to create when the DB instance is created."
  type        = string
  default     = null
}

variable "db_subnet_group_name" {
  description = "Name of DB subnet group."
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "If the DB instance should have deletion protection enabled."
  type        = bool
  default     = false
}

variable "enabled_cloudwatch_logs_exports" {
  description = "Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported."
  type        = list(string)
  default     = []
}

variable "engine" {
  description = "The database engine to use."
  type        = string
}

variable "engine_version" {
  description = "The engine version to use."
  type        = string
  default     = null
}

variable "final_snapshot_identifier" {
  description = "The name of your final DB snapshot when this DB instance is deleted."
  type        = string
  default     = null
}

variable "iam_database_authentication_enabled" {
  description = "Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled."
  type        = bool
  default     = false
}

variable "identifier" {
  description = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier."
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance."
  type        = string
}

variable "iops" {
  description = "The amount of provisioned IOPS."
  type        = string
  default     = null
}

variable "kms_key_arn" {
  description = "The ARN for the KMS encryption key. If creating an encrypted replica, set this to the destination KMS ARN."
  type        = string
  default     = null
}

variable "license_model" {
  description = "License model information for this DB instance."
  type        = string
  default     = null
}

variable "maintenance_window" {
  description = "The window to perform maintenance in."
  type        = string
  default     = null
}

variable "max_allocated_storage" {
  description = "When configured, the upper limit to which Amazon RDS can automatically scale the storage of the DB instance."
  type        = number
  default     = null
}

variable "monitoring_interval" {
  description = "The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance."
  type        = number
  default     = 0
}

variable "multi_az" {
  description = "Specifies if the RDS instance is multi-AZ."
  type        = bool
  default     = false
}

variable "option_group_name" {
  description = "Name of the DB option group to associate."
  type        = string
  default     = null
}

variable "parameter_group_name" {
  description = "Name of the DB parameter group to associate."
  type        = string
  default     = null
}

variable "password" {
  description = "Password for the master DB user."
  type        = string
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights are enabled."
  type        = bool
  default     = false
}

variable "performance_insights_kms_key_id" {
  description = "The ARN for the KMS key to encrypt Performance Insights data."
  type        = string
  default     = null
}

variable "performance_insights_retention_period" {
  description = "Amount of time in days to retain Performance Insights data."
  type        = number
  default     = null
}

variable "port" {
  description = "The port on which the DB accepts connections."
  type        = number
  default     = null
}

variable "publicly_accessible" {
  description = "Bool to control if instance is publicly accessible."
  type        = bool
  default     = false
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted."
  type        = bool
  default     = true
}

variable "snapshot_identifier" {
  description = "Specifies whether or not to create this database from a snapshot."
  type        = string
  default     = ""
}

variable "storage_encrypted" {
  description = "Specifies whether the DB instance is encrypted."
  type        = bool
  default     = false
}

variable "storage_type" {
  description = "One of `standard` (magnetic), `gp2` (general purpose SSD), `gp3` (general purpose SSD that needs iops independently) or `io1` (provisioned IOPS SSD)."
  type        = string
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "username" {
  description = "Username for the master DB user."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate."
  type        = list(string)
  default     = []
}
