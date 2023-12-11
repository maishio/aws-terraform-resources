# --------------------------------------------------------------------------------
# Amazon RDS Cluster Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_instance
# --------------------------------------------------------------------------------

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

variable "availability_zone" {
  description = "EC2 Availability Zone that the DB instance is created in."
  type        = string
  default     = null
}

variable "ca_cert_identifier" {
  description = "Identifier of the CA certificate for the DB instance."
  type        = string
  default     = null
}

variable "cluster_identifier" {
  description = "Identifier of the `aws_rds_cluster` in which to launch this instance."
  type        = string
}

variable "copy_tags_to_snapshot" {
  description = "Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance."
  type        = bool
  default     = false
}

variable "db_parameter_group_name" {
  description = "Name of the DB parameter group to associate with this instance."
  type        = string
  default     = null
}

variable "db_subnet_group_name" {
  description = "DB subnet group to associate with this DB instance."
  type        = string
}

variable "engine" {
  description = "Name of the database engine to be used for the RDS cluster instance."
  type        = string
}

variable "engine_version" {
  description = "Database engine version."
  type        = string
  default     = null
}

variable "identifier" {
  description = "Identifier for the RDS instance."
  type        = string
}

variable "instance_class" {
  description = "Instance class to use."
  type        = string
}

variable "instances" {
  description = "Number of instances to create."
  type        = number
  default     = 1
}

variable "monitoring_interval" {
  description = " Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance."
  type        = number
  default     = 0
}

variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled or not."
  type        = bool
  default     = false
}

variable "performance_insights_kms_key_id" {
  description = "ARN for the KMS key to encrypt Performance Insights data."
  type        = string
  default     = null
}

variable "preferred_maintenance_window" {
  description = "Window to perform maintenance in."
  type        = string
  default     = null
}

variable "promotion_tier" {
  description = "Failover Priority setting on instance level."
  type        = number
  default     = 0
}

variable "publicly_accessible" {
  description = "Bool to control if instance is publicly accessible."
  type        = bool
  default     = false
}

variable "tags" {
  description = "Map of tags to assign to the instance."
  type        = map(string)
  default     = {}
}
