# --------------------------------------------------------------------------------
# AWS Security Hub Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account
# --------------------------------------------------------------------------------

variable "auto_enable_controls" {
  type    = bool
  default = true
}

variable "control_finding_generator" {
  type    = string
  default = "SECURITY_CONTROL"
}

variable "enable_default_standards" {
  type    = bool
  default = false
}
