# --------------------------------------------------------------------------------
# Amazon SESv2 (Simple Email V2) Email Identity
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_email_identity
# --------------------------------------------------------------------------------

variable "configuration_set_name" {
  description = "Configuration set to use by default when sending from this identity."
  type        = string
  default     = null
}

variable "email_identity" {
  description = "Email address or domain to verify."
  type        = string
}

variable "next_signing_key_length" {
  description = "Key length of the future DKIM key pair to be generated."
  type        = string
  default     = "RSA_2048_BIT"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
