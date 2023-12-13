# --------------------------------------------------------------------------------
# Amazon API Gateway Method Response
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response
# --------------------------------------------------------------------------------

variable "http_method" {
  description = "HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)."
  type        = string
}

variable "resource_id" {
  description = "API resource ID."
  type        = string
}

variable "response_models" {
  description = "Map of the API models used for the response's content type."
  type        = map(string)
  default     = {}
}

variable "response_parameters" {
  description = "Map of response parameters that can be sent to the caller."
  type        = map(string)
  default     = {}
}

variable "rest_api_id" {
  description = "ID of the associated REST API."
  type        = string
}

variable "status_code" {
  description = "HTTP status code."
  type        = string
}
