# Amazon API Gateway V2 Integration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration

variable "api_id" {
  description = "API identifier."
  type        = string
}

variable "connection_type" {
  description = "Type of the network connection to the integration endpoint."
  type        = string
  default     = "INTERNET"
}

variable "credentials_arn" {
  description = "Credentials required for the integration, if any."
  type        = string
  default     = null
}

variable "integration_subtype" {
  description = "AWS service action to invoke. Supported only for HTTP APIs when `integration_type` is `AWS_PROXY`."
  type        = string
  default     = null
}

variable "integration_method" {
  description = "Integration's HTTP method. Must be specified if `integration_type` is not `MOCK`."
  type        = string
  default     = null
}

variable "integration_type" {
  description = "Integration type of an integration."
  type        = string
}

variable "integration_uri" {
  description = "URI of the Lambda function for a Lambda proxy integration, when `integration_type` is `AWS_PROXY`."
  type        = string
  default     = null
}

variable "payload_format_version" {
  description = "The format of the payload sent to an integration. Valid values: `1.0`, `2.0`"
  type        = string
  default     = "1.0"
}

variable "request_parameters" {
  description = "For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend."
  type        = map(string)
  default     = {}
}

variable "request_templates" {
  description = "Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client."
  type        = map(string)
  default     = {}
}

variable "timeout_milliseconds" {
  description = "Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs."
  type        = number
  default     = 30000
}
