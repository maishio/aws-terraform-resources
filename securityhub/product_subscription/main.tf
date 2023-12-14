# --------------------------------------------------------------------------------
# AWS Security Hub Product Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_product_subscription
# --------------------------------------------------------------------------------

resource "aws_securityhub_product_subscription" "this" {
  for_each    = var.product_subscriptions
  product_arn = each.value.product_arn
}
