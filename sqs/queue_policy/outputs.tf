# --------------------------------------------------------------------------------
# Amazon SQS Queue Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy
# --------------------------------------------------------------------------------

output "sqs_queue_policy" {
  value = aws_sqs_queue_policy.this
}
