# --------------------------------------------------------------------------------
# Amazon API Gateway Method
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method
# --------------------------------------------------------------------------------

variable "api_key_required" {
  description = "Specify if the method requires an API key."
  type        = bool
  default     = false
}

variable "authorization" {
  description = "Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`)."
  type        = string
  default     = "NONE"
}

variable "authorization_scopes" {
  description = "Authorization scopes used when the authorization is `COGNITO_USER_POOLS`."
  type        = list(string)
  default     = []
}

variable "http_method" {
  description = "HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`)."
  type        = string
}

variable "request_models" {
  description = "Map of the API models used for the request's content type."
  type        = map(string)
  default     = {}
}

variable "request_parameters" {
  description = "Map of request parameters (from the path, query string and headers) that should be passed to the integration."
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
