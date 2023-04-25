# Amazon S3 Bucket Public Access Block
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = var.bucket
  block_public_acls       = var.block_public_acls
  block_public_policy     = var.block_public_policy
  ignore_public_acls      = var.ignore_public_acls
  restrict_public_buckets = var.restrict_public_buckets
}
