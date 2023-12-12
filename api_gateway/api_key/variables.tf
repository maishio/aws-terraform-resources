# --------------------------------------------------------------------------------
# Amazon API Gateway API Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key
# --------------------------------------------------------------------------------

variable "description" {
  description = "API key description."
  type        = string
  default     = "Managed by Terraform"
}

variable "enabled" {
  description = "Whether the API key can be used by callers."
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the API key."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "value" {
  description = "Value of the API key."
  type        = string
  default     = null
}
