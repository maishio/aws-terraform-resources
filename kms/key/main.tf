# --------------------------------------------------------------------------------
# Amazon KMS Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key
# --------------------------------------------------------------------------------

resource "aws_kms_key" "this" {
  bypass_policy_lockout_safety_check = var.bypass_policy_lockout_safety_check
  customer_master_key_spec           = var.customer_master_key_spec
  description                        = var.description
  deletion_window_in_days            = var.deletion_window_in_days
  enable_key_rotation                = var.enable_key_rotation
  is_enabled                         = var.is_enabled
  key_usage                          = var.key_usage
  multi_region                       = var.multi_region
  policy                             = templatefile(var.path, var.vars)
  tags                               = var.tags
}
