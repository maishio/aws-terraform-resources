# Amazon SES Active Receipt Rule Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_active_receipt_rule_set

output "ses_active_receipt_rule_set" {
  description = "Amazon SES Active Receipt Rule Set resource."
  value       = aws_ses_active_receipt_rule_set.this
}
