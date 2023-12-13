# --------------------------------------------------------------------------------
# Amazon API Gateway Integration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration
# --------------------------------------------------------------------------------

variable "cache_key_parameters" {
  description = "List of cache key parameters for the integration."
  type        = list(string)
  default     = []
}

variable "connection_id" {
  description = "ID of the VpcLink used for the integration."
  type        = string
  default     = null
}

variable "connection_type" {
  description = "Integration input's connectionType."
  type        = string
  default     = "INTERNET"
}

variable "http_method" {
  description = "HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`) when calling the associated resource."
  type        = string
  default     = null
}

variable "integration_http_method" {
  description = "Integration HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end."
  type        = string
  default     = null
}

variable "passthrough_behavior" {
  description = "Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`)."
  type        = string
  default     = null
}

variable "request_parameters" {
  description = "Map of request query string parameters and headers that should be passed to the backend responder."
  type        = map(string)
  default     = {}
}

variable "request_templates" {
  description = "Map of the integration's request templates."
  type        = map(string)
  default     = {}
}

variable "resource_id" {
  description = "API resource ID."
  type        = string
}

variable "rest_api_id" {
  description = "ID of the associated REST API."
  type        = string
}

variable "timeout_milliseconds" {
  description = "Custom timeout between 50 and 29,000 milliseconds."
  type        = number
  default     = 29000
}

variable "type" {
  description = "Integration input's type."
  type        = string
}

variable "uri" {
  description = "Input's URI."
  type        = string
  default     = null
}
