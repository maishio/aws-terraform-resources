# --------------------------------------------------------------------------------
# Amazon Inspector Enabler
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector2_enabler
# --------------------------------------------------------------------------------

variable "account_ids" {
  description = "Set of account IDs."
  type        = list(string)
}

variable "resource_types" {
  description = "Type of resources to scan."
  type        = list(string)
}
