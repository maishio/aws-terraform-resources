# AWS CloudTrail
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudtrail

variable "cloud_watch_logs_group_arn" {
  description = "Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered."
  type        = string
  default     = null
}

variable "cloud_watch_logs_role_arn" {
  description = "Role for the CloudWatch Logs endpoint to assume to write to a user’s log group."
  type        = string
  default     = null
}

variable "enable_log_file_validation" {
  description = "Whether log file integrity validation is enabled. Defaults to false."
  type        = bool
  default     = false
}

variable "enable_logging" {
  description = "Whether the CloudTrail is enabled. Defaults to true."
  type        = bool
  default     = true
}

variable "include_global_service_events" {
  description = "Whether the trail is publishing events from global services such as IAM to the log files. Defaults to true."
  type        = bool
  default     = true
}

variable "is_multi_region_trail" {
  description = "Whether the trail is created in the current region or in all regions. Defaults to false."
  type        = bool
  default     = false
}

variable "is_organization_trail" {
  description = "Whether the trail is an AWS Organization trail. Defaults to false."
  type        = bool
  default     = false
}

variable "kms_key_id" {
  description = "KMS key ID to use to encrypt the logs delivered by CloudTrail."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the trail."
  type        = string
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket designated for publishing log files."
  type        = string
}

variable "s3_key_prefix" {
  description = "S3 key prefix that follows the name of the bucket you have designated for log file delivery."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
