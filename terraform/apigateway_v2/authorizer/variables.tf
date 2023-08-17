# Amazon API Gateway V2 Authorizer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_authorizer

variable "api_id" {
  description = "API identifier."
  type        = string
}

variable "authorizer_result_ttl_in_seconds" {
  description = "TTL for cached authorizer results, in seconds. "
  type        = number
  default     = 300
}

variable "authorizer_type" {
  description = "Authorizer type. Valid values: `JWT`, `REQUEST`."
  type        = string
}

variable "enable_simple_responses" {
  description = "Whether a Lambda authorizer returns a response in a simple format."
  type        = bool
  default     = null
}

variable "identity_sources" {
  description = "Identity sources for which authorization is requested."
  type        = list(string)
  default     = []
}

variable "jwt_configuration" {
  description = "Configuration of a JWT authorizer."
  type        = list(any)
  default     = []
}

variable "name" {
  description = "Name of the authorizer."
  type        = string
}
