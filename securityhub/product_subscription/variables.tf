# --------------------------------------------------------------------------------
# AWS Security Hub Product Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_product_subscription
# --------------------------------------------------------------------------------

variable "product_arn" {
  description = "The ARN of the product that generates findings that you want to import into Security Hub."
  type        = string
}
