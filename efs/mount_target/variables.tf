# --------------------------------------------------------------------------------
# Amazon EFS Mount Target
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target
# --------------------------------------------------------------------------------

variable "file_system_id" {
  description = "The ID of the file system for which the mount target is intended."
  type        = string
}

variable "security_groups" {
  description = "A list of up to 5 VPC security group IDs in effect for the mount target."
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "The ID of the subnet to add the mount target in."
  type        = string
}
