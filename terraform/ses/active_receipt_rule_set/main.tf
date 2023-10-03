# Amazon SES Active Receipt Rule Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_active_receipt_rule_set

resource "aws_ses_active_receipt_rule_set" "this" {
  rule_set_name = var.rule_set_name
}
