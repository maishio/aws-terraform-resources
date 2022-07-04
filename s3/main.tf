# --------------------------------------------------------------------------------
# Amazon S3 Bucket resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
# --------------------------------------------------------------------------------

resource "aws_s3_bucket" "this" {
  bucket        = var.bucket
  force_destroy = var.force_destroy
  tags          = merge(var.tags, { "Name" = var.bucket })
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Accelerate Configuration resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_accelerate_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  status = var.accelerate_status
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket ACL resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.this.id
  acl    = var.acl
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket CORS Configuration resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_cors_configuration" "this" {
  bucket   = aws_s3_bucket.this.id
  for_each = var.cors_rule
  cors_rule {
    allowed_headers = lookup(each.value, "allowed_headers", [])
    allowed_methods = lookup(each.value, "allowed_methods", [])
    allowed_origins = lookup(each.value, "allowed_origins", [])
    expose_headers  = lookup(each.value, "expose_headers", [])
    max_age_seconds = lookup(each.value, "max_age_seconds", 0)
  }
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Lifecycle Configuration resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration
# --------------------------------------------------------------------------------

#resource "aws_s3_bucket_lifecycle_configuration" "this" {
#  for_each = var.rules
#  bucket   = aws_s3_bucket.this.id
#    rule {
#      id = each.value.id
#      status = each.value.status
#    }
#}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket (server access) Logging resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_logging" "this" {
  for_each      = var.logging
  bucket        = aws_s3_bucket.this.id
  target_bucket = each.value.target_bucket
  target_prefix = each.value.target_prefix
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Notification resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_notification" "this" {
  count  = var.create_s3_bucket_notification ? 1 : 0
  bucket = aws_s3_bucket.this.id

  dynamic "lambda_function" {
    for_each = var.lambda_function
    content {
      lambda_function_arn = lambda_function.value.lambda_function_arn
      events              = lambda_function.value.events
      filter_prefix       = lookup(lambda_function.value, "filter_prefix", null)
      filter_suffix       = lookup(lambda_function.value, "filter_suffix", null)
    }
  }
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Policy resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_policy" "this" {
  count  = var.create_s3_bucket_policy ? 1 : 0
  bucket = aws_s3_bucket.this.id
  policy = templatefile(var.path, var.vars)

  depends_on = [
    aws_s3_bucket.this,
    aws_s3_bucket_public_access_block.this
  ]
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Public Access Block resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
  depends_on              = [aws_s3_bucket.this]
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Request Payment Configuration resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_request_payment_configuration
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_request_payment_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  payer  = var.request_payer
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Server Side Encryption Configuration resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id
  rule {
    bucket_key_enabled = var.bucket_key_enabled

    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}

# --------------------------------------------------------------------------------
# Amazon S3 Bucket Versioning resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning
# --------------------------------------------------------------------------------

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = var.versioning_status
  }
}
