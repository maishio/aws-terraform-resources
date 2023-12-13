# --------------------------------------------------------------------------------
# Amazon API Gateway REST API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api
# --------------------------------------------------------------------------------

variable "description" {
  description = "Description of the REST API."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the REST API."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "types" {
  description = "List of endpoint types."
  type        = list(string)
  default     = "EDGE"
}
