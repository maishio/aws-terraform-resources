# --------------------------------------------------------------------------------
# Amazon SES Receipt Rule Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule_set
# --------------------------------------------------------------------------------

output "ses_receipt_rule_set" {
  description = "Amazon SES Receipt Rule Set resource."
  value       = aws_ses_receipt_rule_set.this
}
