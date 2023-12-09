# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Stage
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_stage
# --------------------------------------------------------------------------------

variable "access_log_settings" {
  description = "Settings for logging access in this stage."
  type        = list(any)
  default     = []
}

variable "api_id" {
  description = "API identifier."
  type        = string
}

variable "auto_deploy" {
  description = "Whether updates to an API automatically trigger a new deployment. Defaults to `false`."
  type        = bool
  default     = false
}

variable "data_trace_enabled" {
  description = "Whether data trace logging is enabled for the default route."
  type        = bool
  default     = false
}

variable "deployment_id" {
  description = "Deployment identifier of the stage."
  type        = string
  default     = null
}

variable "detailed_metrics_enabled" {
  description = "Whether detailed metrics are enabled for the default route. Defaults to `false`."
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the stage."
  type        = string
}

variable "stage_variables" {
  description = "Map that defines the stage variables for the stage."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "A mapping of tags to assign to the stage."
  type        = map(string)
  default     = {}
}

variable "throttling_burst_limit" {
  description = "Throttling burst limit for the default route."
  type        = number
  default     = 0
}

variable "throttling_rate_limit" {
  description = "Throttling rate limit for the default route."
  type        = number
  default     = 0
}
