# --------------------------------------------------------------------------------
# Amazon KMS Alias
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias
# --------------------------------------------------------------------------------

variable "name" {
  description = "The display name of the alias."
  type        = string
  default     = null
}

variable "target_key_id" {
  description = "Identifier for the key for which the alias is for, can be either an ARN or key_id."
  type        = string
}
