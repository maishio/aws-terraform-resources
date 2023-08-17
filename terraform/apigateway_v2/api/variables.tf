# Amazon API Gateway V2 API
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api

variable "api_key_selection_expression" {
  description = "API key selection expression."
  type        = string
  default     = "$request.header.x-api-key"
}

variable "description" {
  description = "Description of the API."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the API."
  type        = string
}

variable "protocol_type" {
  description = "API protocol. Valid values: `HTTP`, `WEBSOCKET`."
  type        = string
}

variable "route_selection_expression" {
  description = "Route selection expression for the API."
  type        = string
  default     = "$request.method $request.path"
}

variable "tags" {
  description = "A mapping of tags to assign to the API."
  type        = map(string)
  default     = {}
}
