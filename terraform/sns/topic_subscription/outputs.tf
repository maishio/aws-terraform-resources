# Amazon SNS Topic Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription

output "sns_topic_subscription" {
  description = "Amazon SNS Topic Subscription resource."
  value       = aws_sns_topic_subscription.this
}
