# Amazon S3 Bucket Logging
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging

resource "aws_s3_bucket_logging" "this" {
  bucket        = var.bucket
  target_bucket = var.target_bucket
  target_prefix = var.target_prefix
}
