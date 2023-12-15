# --------------------------------------------------------------------------------
# Amazon EFS Backup Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_backup_policy
# --------------------------------------------------------------------------------

variable "file_system_id" {
  description = "The ID of the EFS file system."
  type        = string
}

/* backup_policy */

variable "status" {
  description = "A status of the backup policy."
  type        = string
}
