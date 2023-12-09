# --------------------------------------------------------------------------------
# Amazon SNS Topic
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
# --------------------------------------------------------------------------------

resource "aws_sns_topic" "this" {
  display_name                        = var.display_name
  fifo_topic                          = var.fifo_topic
  lambda_failure_feedback_role_arn    = var.lambda_failure_feedback_role_arn
  lambda_success_feedback_role_arn    = var.lambda_success_feedback_role_arn
  lambda_success_feedback_sample_rate = var.lambda_success_feedback_sample_rate
  name                                = var.name
  tags                                = merge(var.tags, { "Name" = var.name })
}
