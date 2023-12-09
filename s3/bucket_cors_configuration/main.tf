# --------------------------------------------------------------------------------
# Amazon S3 Bucket CORS Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_cors_configuration" "this" {
  bucket = var.bucket

  dynamic "cors_rule" {
    for_each = var.cors_rule
    content {
      allowed_headers = lookup(cors_rule.value, "allowed_headers", [])
      allowed_methods = cors_rule.value.allowed_methods
      allowed_origins = cors_rule.value.allowed_origins
      expose_headers  = lookup(cors_rule.value, "expose_headers", [])
      max_age_seconds = lookup(cors_rule.value, "max_age_seconds", 0)
    }
  }
}
