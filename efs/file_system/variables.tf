# --------------------------------------------------------------------------------
# Amazon EFS File System
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system
# --------------------------------------------------------------------------------

variable "creation_token" {
  description = "A unique name used as reference when creating the Elastic File System to ensure idempotent file system creation."
  type        = string
  default     = null
}

variable "encrypted" {
  description = "If true, the disk will be encrypted."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of file system."
  type        = string
}

variable "performance_mode" {
  description = "The file system performance mode."
  type        = string
  default     = "generalPurpose"
}

variable "provisioned_throughput_in_mibps" {
  description = "The throughput, measured in MiB/s, that you want to provision for the file system."
  type        = number
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the file system."
  type        = map(string)
  default     = {}
}

variable "throughput_mode" {
  description = "Throughput mode for the file system."
  type        = string
  default     = "bursting"
}

/* Lifecycle Policy Arguments */

variable "lifecycle_policy" {
  description = "Dynamic block for lifecycle_policy"
  type        = list(any)
  default     = []
}
