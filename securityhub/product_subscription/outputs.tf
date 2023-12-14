# --------------------------------------------------------------------------------
# AWS Security Hub Product Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_product_subscription
# --------------------------------------------------------------------------------

output "securityhub_product_subscription" {
  value = aws_securityhub_product_subscription.this
}
