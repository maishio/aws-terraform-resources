# --------------------------------------------------------------------------------
# Amazon CloudWatch Logs Subscription Filter
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter
# --------------------------------------------------------------------------------

resource "aws_cloudwatch_log_subscription_filter" "this" {
  destination_arn = var.destination_arn
  distribution    = var.distribution
  filter_pattern  = var.filter_pattern
  log_group_name  = var.log_group_name
  name            = var.name
}
