# --------------------------------------------------------------------------------
# Amazon KMS Alias
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias
# --------------------------------------------------------------------------------

output "kms_alias" {
  value = aws_kms_alias.this
}
