# --------------------------------------------------------------------------------
# Amazon S3 Bucket CORS Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration
# --------------------------------------------------------------------------------

variable "bucket" {
  description = "Name of the bucket."
  type        = string
}

variable "cors_rule" {
  description = "Dynamic block for create the cors_rule."
  type        = list(any)
  default     = []
}
