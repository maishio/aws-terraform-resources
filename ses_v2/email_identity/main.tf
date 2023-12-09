# --------------------------------------------------------------------------------
# Amazon SESv2 (Simple Email V2) Email Identity
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_email_identity
# --------------------------------------------------------------------------------

resource "aws_sesv2_email_identity" "this" {
  configuration_set_name = var.configuration_set_name
  email_identity         = var.email_identity
  tags                   = merge(var.tags, { "Name" = var.email_identity })

  dkim_signing_attributes {
    next_signing_key_length = var.next_signing_key_length
  }
}
