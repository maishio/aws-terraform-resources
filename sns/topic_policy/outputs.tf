# Amazon SNS Topic Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy

output "sns_topic_policy" {
  description = "Amazon SNS Topic Policy resource."
  value       = aws_sns_topic_policy.this
}
