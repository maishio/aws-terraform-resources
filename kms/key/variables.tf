# --------------------------------------------------------------------------------
# Amazon KMS Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key
# --------------------------------------------------------------------------------

variable "bypass_policy_lockout_safety_check" {
  description = "A flag to indicate whether to bypass the key policy lockout safety check."
  type        = bool
  default     = false
}

variable "customer_master_key_spec" {
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports."
  type        = string
  default     = "SYMMETRIC_DEFAULT"
}
variable "description" {
  description = "The description of the key as viewed in AWS console."
  type        = string
  default     = null
}

variable "deletion_window_in_days" {
  description = "The waiting period, specified in number of days."
  type        = number
  default     = 30
}

variable "enable_key_rotation" {
  description = "Specifies whether key rotation is enabled."
  type        = bool
  default     = false
}

variable "is_enabled" {
  description = "Specifies whether the key is enabled."
  type        = bool
  default     = true
}

variable "key_usage" {
  description = "Specifies the intended use of the key."
  type        = string
  default     = "ENCRYPT_DECRYPT"
}

variable "multi_region" {
  description = "Indicates whether the KMS key is a multi-Region (`true`) or regional (`false`) key."
  type        = bool
  default     = false
}

variable "path" {
  description = "path to the JSON document for setting the policy."
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the object."
  type        = map(string)
  default     = {}
}

variable "vars" {
  description = "Variables used in the JSON document for setting the policy."
  type        = map(string)
  default     = {}
}
