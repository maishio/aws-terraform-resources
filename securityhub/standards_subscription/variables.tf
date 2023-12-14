# --------------------------------------------------------------------------------
# AWS Security Hub Standards Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription
# --------------------------------------------------------------------------------

variable "standards_arn" {
  description = "The ARN of a standard."
  type        = string
}
