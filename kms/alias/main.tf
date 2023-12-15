# --------------------------------------------------------------------------------
# Amazon KMS Alias
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias
# --------------------------------------------------------------------------------

resource "aws_kms_alias" "this" {
  name          = var.name
  target_key_id = var.target_key_id
}
