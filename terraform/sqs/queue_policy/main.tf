# Amazon SQS Queue Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy

resource "aws_sqs_queue_policy" "this" {
  queue_url = var.queue_url
  policy    = templatefile(var.path, var.vars)
}
