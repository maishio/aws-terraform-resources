# --------------------------------------------------------------------------------
# AWS Lambda Event Source Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping
# --------------------------------------------------------------------------------

resource "aws_lambda_event_source_mapping" "this" {
  batch_size                         = var.batch_size
  enabled                            = var.enabled
  event_source_arn                   = var.event_source_arn
  function_name                      = var.function_name
  maximum_batching_window_in_seconds = var.maximum_batching_window_in_seconds
  starting_position                  = var.starting_position
}
