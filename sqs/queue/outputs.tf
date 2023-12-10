# --------------------------------------------------------------------------------
# Amazon SQS Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue
# --------------------------------------------------------------------------------

output "sqs_queue" {
  value = aws_sqs_queue.this
}
