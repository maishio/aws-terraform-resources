# --------------------------------------------------------------------------------
# Amazon SESv2 (Simple Email V2) Configuration Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_configuration_set
# --------------------------------------------------------------------------------

output "sesv2_configuration_set" {
  value = aws_sesv2_configuration_set.this
}
