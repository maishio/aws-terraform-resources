# Amazon SQS Queue Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy

output "sqs_queue_policy" {
  description = "Amazon SQS Queue Policy resource."
  value       = aws_sqs_queue_policy.this
}
