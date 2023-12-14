# --------------------------------------------------------------------------------
# AWS Security Hub Standards Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription
# --------------------------------------------------------------------------------

variable "standards_subscriptions" {
  type    = map(any)
  default = {}
}
