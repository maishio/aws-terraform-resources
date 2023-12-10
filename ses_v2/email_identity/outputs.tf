# --------------------------------------------------------------------------------
# Amazon SESv2 (Simple Email V2) Email Identity
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_email_identity
# --------------------------------------------------------------------------------

output "sesv2_email_identity" {
  value = aws_sesv2_email_identity.this
}
