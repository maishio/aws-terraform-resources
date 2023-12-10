# --------------------------------------------------------------------------------
# Amazon S3 Bucket Notification
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification
# --------------------------------------------------------------------------------

output "s3_bucket_notification" {
  value = aws_s3_bucket_notification.this
}
