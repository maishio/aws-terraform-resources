# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Route
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_route
# --------------------------------------------------------------------------------

variable "api_id" {
  description = "API identifier."
  type        = string
}

variable "api_key_required" {
  description = "Boolean whether an API key is required for the route. Defaults to `false`."
  type        = bool
  default     = false
}

variable "authorization_scopes" {
  description = "Authorization scopes supported by this route."
  type        = list(string)
  default     = []
}

variable "authorization_type" {
  description = "Authorization type for the route."
  type        = string
  default     = "NONE"

}

variable "authorizer_id" {
  description = "dentifier of the aws_apigatewayv2_authorizer resource to be associated with this route."
  type        = string
  default     = null
}

variable "request_models" {
  description = "Request models for the route."
  type        = map(string)
  default     = {}
}

variable "route_key" {
  description = "Route key for the route."
  type        = string
}

variable "target" {
  description = "Target for the route."
  type        = string
  default     = null
}
