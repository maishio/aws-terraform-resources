# --------------------------------------------------------------------------------
# Amazon SES Receipt Rule Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule_set
# --------------------------------------------------------------------------------

resource "aws_ses_receipt_rule_set" "this" {
  rule_set_name = var.rule_set_name
}
