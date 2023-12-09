# AWS Secrets Manager secret
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret

variable "description" {
  description = "Description of the secret."
  type        = string
  default     = null
}

variable "force_overwrite_replica_secret" {
  description = "Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the secret."
  type        = string
}

variable "recovery_window_in_days" {
  description = "Number of days that AWS Secrets Manager waits before it can delete the secret."
  type        = number
  default     = 30
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

# AWS Secrets Manager secret version
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version

variable "secret_string" {
  description = "Specifies text data that you want to encrypt and store in this version of the secret."
  type        = string
  default     = null
}
