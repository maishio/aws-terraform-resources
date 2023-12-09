# --------------------------------------------------------------------------------
# Amazon S3 Bucket Public Access Block
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block
# --------------------------------------------------------------------------------

output "s3_bucket_public_access_block" {
  description = "Amazon S3 Bucket Public Access Block resource."
  value       = saws_s3_bucket_public_access_block3_bucket.this
}
