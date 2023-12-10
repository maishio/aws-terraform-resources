# --------------------------------------------------------------------------------
# Amazon S3 Bucket Accelerate Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration
# --------------------------------------------------------------------------------

output "s3_bucket_accelerate_configuration" {
  value = aws_s3_bucket_accelerate_configuration.this
}
