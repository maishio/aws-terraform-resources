# Amazon S3 Bucket Accelerate Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration

variable "bucket" {
  description = "Name of the bucket."
  type        = string
}

variable "expected_bucket_owner" {
  description = "Account ID of the expected bucket owner."
  type        = string
  default     = null
}

variable "status" {
  description = "Transfer acceleration state of the bucket. Valid values are `Enabled` and `Suspended`."
  type        = string
  default     = "Suspended"
}
