# --------------------------------------------------------------------------------
# Amazon S3 Bucket Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy
# --------------------------------------------------------------------------------

output "s3_bucket_policy" {
  value = aws_s3_bucket_policy.this
}
