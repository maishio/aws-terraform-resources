# --------------------------------------------------------------------------------
# AWS Lambda variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function
# --------------------------------------------------------------------------------

variable "description" {
  type    = string
  default = null
}

variable "environments" {
  type    = any
  default = []
}

variable "filename" {
  type    = string
  default = null
}

variable "function_name" {
  type    = string
  default = null
}

variable "handler" {
  type    = string
  default = null
}

variable "image_uri" {
  type    = string
  default = null
}

variable "layers" {
  type    = list(string)
  default = []
}

variable "memory_size" {
  type    = number
  default = 128
}

variable "package_type" {
  type    = string
  default = "Zip"
}

variable "role" {
  type    = string
  default = null
}

variable "runtime" {
  type    = string
  default = null
}

variable "source_code_hash" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "timeout" {
  type    = number
  default = 3
}

variable "vpc_config" {
  type    = any
  default = []
}

# --------------------------------------------------------------------------------
# AWS Lambda Permission variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission
# --------------------------------------------------------------------------------

variable "action" {
  type    = string
  default = null
}

variable "principal" {
  type    = string
  default = null
}

variable "source_arn" {
  type    = string
  default = null
}

variable "statement_id" {
  type    = string
  default = null
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Notification variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification
# --------------------------------------------------------------------------------

variable "create_s3_bucket_notification" {
  type    = bool
  default = false
}

variable "bucket" {
  type    = string
  default = null
}