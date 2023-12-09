# Amazon S3 Bucket Notification
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification

variable "bucket" {
  description = "Name of the bucket."
  type        = string
}

variable "lambda_function" {
  description = "Dynamic block for create the lambda_function."
  type        = list(any)
  default     = []
}
