# --------------------------------------------------------------------------------
# Amazon SNS Topic
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
# --------------------------------------------------------------------------------

output "sns_topic" {
  description = "Amazon SNS Topic resource."
  value       = aws_sns_topic.this
}
