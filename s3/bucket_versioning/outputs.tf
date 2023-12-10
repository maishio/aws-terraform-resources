# --------------------------------------------------------------------------------
# Amazon S3 Bucket Versioning
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning
# --------------------------------------------------------------------------------

output "s3_bucket_versioning" {
  value = aws_s3_bucket_versioning.this
}
