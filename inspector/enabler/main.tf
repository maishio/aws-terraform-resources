# --------------------------------------------------------------------------------
# Amazon Inspector Enabler
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector2_enabler
# --------------------------------------------------------------------------------

resource "aws_inspector2_enabler" "this" {
  account_ids    = var.account_ids
  resource_types = var.resource_types
}
