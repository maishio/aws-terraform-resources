# --------------------------------------------------------------------------------
# Amazon ElastiCache Replication Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group
# --------------------------------------------------------------------------------

variable "apply_immediately" {
  description = "Specifies whether any modifications are applied immediately, or during the next maintenance window."
  type        = bool
  default     = false
}

variable "at_rest_encryption_enabled" {
  description = "Whether to enable encryption at rest."
  type        = bool
  default     = false
}

variable "auto_minor_version_upgrade" {
  description = "Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window."
  type        = bool
  default     = true
}

variable "automatic_failover_enabled" {
  description = "Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails."
  type        = bool
  default     = false
}

variable "description" {
  description = "User-created description for the replication group."
  type        = string
}

variable "engine" {
  description = "Name of the cache engine to be used for the clusters in this replication group."
  type        = string
  default     = "redis"
}

variable "engine_version" {
  description = "Version number of the cache engine to be used for the cache clusters in this replication group."
  type        = string
  default     = null
}

variable "maintenance_window" {
  description = "Specifies the weekly time range for when maintenance on the cache cluster is performed."
  type        = string
  default     = null
}

variable "multi_az_enabled" {
  description = "Specifies whether to enable Multi-AZ Support for the replication group."
  type        = bool
  default     = false
}

variable "node_type" {
  description = "Instance class to be used."
  type        = string
  default     = null
}

variable "num_cache_clusters" {
  description = "Number of cache clusters (primary and replicas) this replication group will have."
  type        = number
  default     = 1
}

variable "parameter_group_name" {
  description = "Name of the parameter group to associate with this replication group."
  type        = string
  default     = null
}

variable "port" {
  description = "Port number on which each of the cache nodes will accept connections."
  type        = number
  default     = null
}

variable "replication_group_id" {
  description = "Replication group identifier."
  type        = string
}

variable "security_group_ids" {
  description = "IDs of one or more Amazon VPC security groups associated with this replication group."
  type        = list(string)
  default     = []
}

variable "security_group_names" {
  description = "Names of one or more Amazon VPC security groups associated with this replication group."
  type        = list(string)
  default     = []
}

variable "snapshot_retention_limit" {
  description = "Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them."
  type        = number
  default     = null
}

variable "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster."
  type        = string
  default     = null
}

variable "subnet_group_name" {
  description = "Name of the cache subnet group to be used for the replication group."
  type        = string
  default     = null
}

variable "tags" {
  description = "Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
