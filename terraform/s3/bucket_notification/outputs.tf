# Amazon S3 Bucket Notification
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification

output "s3_bucket_notification" {
  description = "Amazon S3 Bucket Notification resource."
  value       = aws_s3_bucket_notification.this
}
