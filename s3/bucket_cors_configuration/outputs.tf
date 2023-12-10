# --------------------------------------------------------------------------------
# Amazon S3 Bucket CORS Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration
# --------------------------------------------------------------------------------

output "s3_bucket_cors_configuration" {
  value = aws_s3_bucket_cors_configuration.this
}
