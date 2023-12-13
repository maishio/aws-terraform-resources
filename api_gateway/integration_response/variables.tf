# --------------------------------------------------------------------------------
# Amazon API Gateway Integration Response
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration_response
# --------------------------------------------------------------------------------

variable "http_method" {
  description = "HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)."
  type        = string
}

variable "resource_id" {
  description = "API resource ID."
  type        = string
}

variable "response_parameters" {
  description = "Map of response parameters that can be read from the backend response."
  type        = map(string)
  default     = {}
}

variable "response_templates" {
  description = "Map of templates used to transform the integration response body."
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
