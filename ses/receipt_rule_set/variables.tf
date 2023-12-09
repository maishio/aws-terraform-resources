# --------------------------------------------------------------------------------
# Amazon SES Receipt Rule Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule_set
# --------------------------------------------------------------------------------

variable "rule_set_name" {
  description = "Name of the rule set."
  type        = string
}
