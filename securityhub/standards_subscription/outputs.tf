# --------------------------------------------------------------------------------
# AWS Security Hub Standards Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription
# --------------------------------------------------------------------------------

output "securityhub_standards_subscription" {
  value = aws_securityhub_standards_subscription.this
}
