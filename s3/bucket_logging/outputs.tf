# --------------------------------------------------------------------------------
# Amazon S3 Bucket Logging
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging
# --------------------------------------------------------------------------------

output "s3_bucket_logging" {
  value = aws_s3_bucket_logging.this
}
