# Amazon SES Receipt Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule

output "ses_receipt_rule" {
  description = "Amazon SES Receipt Rule Set resource."
  value       = aws_ses_receipt_rule.this
}
