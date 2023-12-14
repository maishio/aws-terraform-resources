# --------------------------------------------------------------------------------
# AWS Security Hub Product Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_product_subscription
# --------------------------------------------------------------------------------

variable "product_subscriptions" {
  type    = map(any)
  default = {}
}
