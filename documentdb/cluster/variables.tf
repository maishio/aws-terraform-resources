# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster
# --------------------------------------------------------------------------------

variable "apply_immediately" {
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. "
  type        = bool
  default     = false
}

variable "availability_zones" {
  description = "A list of EC2 Availability Zones that instances in the DB cluster can be created in."
  type        = list(string)
  default     = []
}

variable "backup_retention_period" {
  description = "The days to retain backups for. "
  type        = number
  default     = 1
}

variable "cluster_identifier" {
  description = "The cluster identifier."
  type        = string
  default     = null
}

variable "db_cluster_parameter_group_name" {
  description = "A cluster parameter group to associate with the cluster."
  type        = string
  default     = null
}

variable "db_subnet_group_name" {
  description = "A DB subnet group to associate with this DB instance."
  type        = string
  default     = null
}

variable "deletion_protection" {
  description = "A value that indicates whether the DB cluster has deletion protection enabled."
  type        = bool
  default     = true
}

variable "enabled_cloudwatch_logs_exports" {
  description = "List of log types to export to cloudwatch. If omitted, no logs will be exported."
  type        = list(string)
  default     = []
}

variable "engine" {
  description = "The name of the database engine to be used for this DB cluster."
  type        = string
  default     = "docdb"
}

variable "engine_version" {
  description = "The database engine version. Updating this argument results in an outage."
  type        = string
  default     = null
}

variable "final_snapshot_identifier" {
  description = "The name of your final DB snapshot when this DB cluster is deleted."
  type        = string
  default     = null
}

variable "global_cluster_identifier" {
  description = "The global cluster identifier specified on `aws_docdb_global_cluster`."
  type        = string
  default     = null
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
  description = "The port on which the DB accepts connections."
  type        = number
  default     = 27017
}

variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter."
  type        = string
  default     = null
}

variable "preferred_maintenance_window" {
  description = "The weekly time range during which system maintenance can occur, in (UTC)."
  type        = string
  default     = null
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB cluster is deleted."
  type        = bool
  default     = false
}

variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted. "
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
