# --------------------------------------------------------------------------------
# Amazon S3 Bucket variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
# --------------------------------------------------------------------------------

variable "bucket" {
  type = string
}

variable "force_destroy" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket ACL variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl
# --------------------------------------------------------------------------------

variable "acl" {
  type    = string
  default = "private"
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Accelerate Configuration variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration
# --------------------------------------------------------------------------------

variable "accelerate_status" {
  type    = string
  default = "Suspended"
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Request Payment Configuration variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration
# --------------------------------------------------------------------------------

variable "request_payer" {
  type    = string
  default = "BucketOwner"
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket CORS Configuration variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration
# --------------------------------------------------------------------------------

variable "cors_rule" {
  type    = any
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket (server access) Logging variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging
# --------------------------------------------------------------------------------

variable "logging" {
  type    = any
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Versioning variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning
# --------------------------------------------------------------------------------

variable "versioning_status" {
  type    = string
  default = "Enabled"
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Lifecycle Configuration variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration
# --------------------------------------------------------------------------------

variable "rules" {
  type    = any
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Server Side Encryption Configuration variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration
# --------------------------------------------------------------------------------

variable "bucket_key_enabled" {
  type    = bool
  default = false
}

variable "sse_algorithm" {
  type    = string
  default = "AES256"
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Public Access Block variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block
# --------------------------------------------------------------------------------

variable "block_public_acls" {
  type    = bool
  default = true
}

variable "block_public_policy" {
  type    = bool
  default = true
}

variable "ignore_public_acls" {
  type    = bool
  default = true
}

variable "restrict_public_buckets" {
  type    = bool
  default = true
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Policy variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy
# --------------------------------------------------------------------------------

variable "create_s3_bucket_policy" {
  type    = bool
  default = false
}

variable "path" {
  type    = string
  default = null
}

variable "vars" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Notification variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification
# --------------------------------------------------------------------------------

variable "create_s3_bucket_notification" {
  type    = bool
  default = false
}

variable "lambda_function" {
  type    = any
  default = []
}
