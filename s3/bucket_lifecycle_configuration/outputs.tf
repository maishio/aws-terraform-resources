# --------------------------------------------------------------------------------
# Amazon S3 Bucket Lifecycle Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_lifecycle_configuration
# --------------------------------------------------------------------------------

output "s3_bucket_lifecycle_configuration" {
  value = aws_s3_bucket_lifecycle_configuration.this
}
