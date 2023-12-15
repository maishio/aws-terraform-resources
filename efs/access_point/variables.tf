# --------------------------------------------------------------------------------
# Amazon EFS Access Point
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point
# --------------------------------------------------------------------------------

variable "file_system_id" {
  description = "ID of the file system for which the access point is intended."
  type        = string
}

variable "name" {
  description = "Name of the access point."
  type        = string
}

variable "tags" {
  description = "Key-value mapping of resource tags."
  type        = map(string)
  default     = {}
}

/* posix_user */

variable "gid" {
  description = "POSIX group ID used for all file system operations using this access point."
  type        = number
}

variable "secondary_gids" {
  description = "Secondary POSIX group IDs used for all file system operations using this access point."
  type        = number
  default     = null
}

variable "uid" {
  description = "POSIX user ID used for all file system operations using this access point."
  type        = number
}

/* root_directory */

variable "path" {
  description = "Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system."
  type        = string
  default     = null
}

/* create_info */

variable "owner_gid" {
  description = "POSIX group ID to apply to the `root_directory`."
  type        = number
}

variable "owner_uid" {
  description = "POSIX user ID to apply to the `root_directory`."
  type        = number
}

variable "permissions" {
  description = "POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits."
  type        = number
}
