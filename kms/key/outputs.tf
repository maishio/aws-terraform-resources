# --------------------------------------------------------------------------------
# Amazon KMS Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key
# --------------------------------------------------------------------------------

output "kms_key" {
  value = aws_kms_key.this
}
