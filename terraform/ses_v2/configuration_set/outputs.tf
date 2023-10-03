# AWS SESv2 (Simple Email V2) Configuration Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_configuration_set

output "sesv2_configuration_set" {
  description = "AWS SESv2 (Simple Email V2) Configuration Set resource."
  value       = aws_sesv2_configuration_set.this
}
