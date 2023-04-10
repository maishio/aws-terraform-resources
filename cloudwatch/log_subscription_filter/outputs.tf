# Amazon CloudWatch Logs Subscription Filter
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter

output "cloudwatch_log_subscription_filter" {
  value = aws_cloudwatch_log_subscription_filter.this
}
