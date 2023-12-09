# --------------------------------------------------------------------------------
# AWS Secrets Manager Secret Version
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version
# --------------------------------------------------------------------------------

variable "secret_id" {
  description = "Specifies the secret to which you want to add a new version."
  type        = string
}

variable "secret_string" {
  description = "Specifies text data that you want to encrypt and store in this version of the secret."
  type        = string
  default     = null
}
