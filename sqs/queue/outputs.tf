# --------------------------------------------------------------------------------
# Amazon SQS Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue
# --------------------------------------------------------------------------------

output "sqs_queue" {
  description = "Amazon SQS Queue resource."
  value       = aws_sqs_queue.this
}
