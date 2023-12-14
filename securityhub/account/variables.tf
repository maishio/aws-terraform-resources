# --------------------------------------------------------------------------------
# AWS Security Hub Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account
# --------------------------------------------------------------------------------

variable "auto_enable_controls" {
  description = "Whether to automatically enable new controls when they are added to standards that are enabled."
  type        = bool
  default     = true
}

variable "control_finding_generator" {
  description = "Updates whether the calling account has consolidated control findings turned on."
  type        = string
  default     = "SECURITY_CONTROL"
}

variable "enable_default_standards" {
  description = "Whether to enable the security standards that Security Hub has designated as automatically enabled including: `AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`."
  type        = bool
  default     = false
}
