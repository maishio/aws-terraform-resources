# --------------------------------------------------------------------------------
# Amazon RDS Cluster
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster
# --------------------------------------------------------------------------------

variable "allow_major_version_upgrade" {
  description = "Enable to allow major engine version upgrades when changing engine versions."
  type        = bool
  default     = false
}

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = false
}

variable "availability_zones" {
  description = "List of EC2 Availability Zones for the DB cluster storage where DB cluster instances can be created."
  type        = list(string)
  default     = []
}

variable "backtrack_window" {
  description = "Target backtrack window, in seconds."
  type        = number
  default     = 0
}

variable "backup_retention_period" {
  description = "Days to retain backups for."
  type        = number
  default     = 1
}

variable "cluster_identifier" {
  description = "The cluster identifier."
  type        = string
}

variable "copy_tags_to_snapshot" {
  description = "Copy all Cluster `tags` to snapshots."
  type        = bool
  default     = false
}

variable "database_name" {
  description = "Name for an automatically created database on cluster creation."
  type        = string
  default     = null
}

variable "db_cluster_parameter_group_name" {
  description = "A cluster parameter group to associate with the cluster."
  type        = string
  default     = null
}

variable "db_subnet_group_name" {
  description = "DB subnet group to associate with this DB cluster."
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "If the DB cluster should have deletion protection enabled."
  type        = bool
  default     = false
}

variable "enable_http_endpoint" {
  description = "Enable HTTP endpoint (data API)."
  type        = bool
  default     = false
}

variable "enabled_cloudwatch_logs_exports" {
  description = "Set of log types to export to cloudwatch."
  type        = list(string)
  default     = []
}

variable "engine" {
  description = "Name of the database engine to be used for this DB cluster."
  type        = string
}

variable "engine_mode" {
  description = "Database engine mode."
  type        = string
  default     = "provisioned"
}

variable "engine_version" {
  description = "Database engine version."
  type        = string
  default     = null
}

variable "iam_database_authentication_enabled" {
  description = "Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled."
  type        = bool
  default     = false
}

variable "iam_roles" {
  description = "List of ARNs for the IAM roles to associate to the RDS Cluster."
  type        = list(string)
  default     = []
}

variable "kms_key_id" {
  description = "ARN for the KMS encryption key."
  type        = string
  default     = null
}

variable "master_password" {
  description = "Password for the master DB user."
  type        = string
}

variable "master_username" {
  description = "Username for the master DB user."
  type        = string
}

variable "port" {
  description = "Port on which the DB accepts connections."
  type        = number
  default     = null
}

variable "preferred_backup_window" {
  description = "Daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter."
  type        = string
  default     = null
}

variable "preferred_maintenance_window" {
  description = "Weekly time range during which system maintenance can occur, in (UTC)."
  type        = string
  default     = null
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted."
  type        = bool
  default     = false
}

variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the DB cluster."
  type        = map(string)
  default     = {}
}

variable "vpc_security_group_ids" {
  description = "List of VPC security groups to associate with the Cluster."
  type        = list(string)
  default     = []
}
