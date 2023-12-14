# --------------------------------------------------------------------------------
# AWS Security Hub Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account
# --------------------------------------------------------------------------------

output "securityhub_account" {
  value = aws_securityhub_account.this
}
