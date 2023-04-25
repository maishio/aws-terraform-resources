# Amazon S3 Bucket ACL
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl

resource "aws_s3_bucket_acl" "this" {
  bucket = var.bucket
  acl    = var.acl
}
