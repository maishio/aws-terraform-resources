# --------------------------------------------------------------------------------
# Amazon SQS Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue
# --------------------------------------------------------------------------------

resource "aws_sqs_queue" "this" {
  content_based_deduplication       = var.content_based_deduplication
  delay_seconds                     = var.delay_seconds
  fifo_queue                        = var.fifo_queue
  kms_data_key_reuse_period_seconds = var.kms_data_key_reuse_period_seconds
  max_message_size                  = var.max_message_size
  message_retention_seconds         = var.message_retention_seconds
  name                              = var.name
  policy                            = var.policy_path != null ? templatefile(var.policy_path, var.policy_vars) : null
  receive_wait_time_seconds         = var.receive_wait_time_seconds
  redrive_policy                    = var.redrive_policy_path != null ? templatefile(var.redrive_policy_path, var.redrive_policy_vars) : null
  redrive_allow_policy              = var.redrive_allow_policy_path != null ? templatefile(var.redrive_allow_policy_path, var.redrive_allow_policy_vars) : null
  sqs_managed_sse_enabled           = var.sqs_managed_sse_enabled
  tags                              = merge(var.tags, { "Name" = var.name })
  visibility_timeout_seconds        = var.visibility_timeout_seconds
}
