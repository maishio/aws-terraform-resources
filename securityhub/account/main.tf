# --------------------------------------------------------------------------------
# AWS Security Hub Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account
# --------------------------------------------------------------------------------

resource "aws_securityhub_account" "this" {
  auto_enable_controls      = var.auto_enable_controls
  control_finding_generator = var.control_finding_generator
  enable_default_standards  = var.enable_default_standards
}
