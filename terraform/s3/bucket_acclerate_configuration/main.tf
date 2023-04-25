# Amazon S3 Bucket Accelerate Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration

resource "aws_s3_bucket_accelerate_configuration" "this" {
  bucket                = var.bucket
  expected_bucket_owner = var.expected_bucket_owner
  status                = var.status
}
