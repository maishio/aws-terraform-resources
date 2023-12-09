# --------------------------------------------------------------------------------
# Amazon S3 Bucket Logging
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging
# --------------------------------------------------------------------------------

variable "bucket" {
  description = "Name of the bucket."
  type        = string
}

variable "target_bucket" {
  description = "Name of the bucket where you want Amazon S3 to store server access logs."
  type        = string
  default     = null
}

variable "target_prefix" {
  description = "Prefix for all log object keys."
  type        = string
  default     = null
}
