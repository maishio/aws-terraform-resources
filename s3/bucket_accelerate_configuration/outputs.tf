# --------------------------------------------------------------------------------
# Amazon S3 Bucket Accelerate Configuration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration
# --------------------------------------------------------------------------------

output "s3_bucket_accelerate_configuration" {
  description = "Amazon S3 Bucket Accelerate Configuration resource."
  value       = aws_s3_bucket_accelerate_configuration.this
}
