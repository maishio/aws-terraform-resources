# --------------------------------------------------------------------------------
# Amazon API Gateway Method Settings
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings
# --------------------------------------------------------------------------------

variable "method_path" {
  description = "Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage."
  type        = string
}

variable "rest_api_id" {
  description = "D of the REST API."
  type        = string
}

variable "stage_name" {
  description = "Name of the stage."
  type        = string
}

/* settings ブロック */

variable "cache_data_encrypted" {
  description = "Whether the cached responses are encrypted."
  type        = bool
  default     = null
}

variable "cache_ttl_in_seconds" {
  description = "Time to live (TTL), in seconds, for cached responses."
  type        = number
  default     = null
}

variable "caching_enabled" {
  description = "Whether responses should be cached and returned for requests."
  type        = bool
  default     = false
}

variable "data_trace_enabled" {
  description = "Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs."
  type        = bool
  default     = false
}

variable "logging_level" {
  description = "Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs."
  type        = string
  default     = null
}

variable "metrics_enabled" {
  description = "Whether Amazon CloudWatch metrics are enabled for this method."
  type        = bool
  default     = false
}

variable "require_authorization_for_cache_control" {
  description = "Whether authorization is required for a cache invalidation request."
  type        = bool
  default     = true
}

variable "throttling_burst_limit" {
  description = "Throttling burst limit."
  type        = number
  default     = -1
}

variable "throttling_rate_limit" {
  description = "Throttling rate limit."
  type        = number
  default     = -1
}

variable "unauthorized_cache_control_header_strategy" {
  description = "How to handle unauthorized requests for cache invalidation. "
  type        = string
  default     = "SUCCEED_WITH_RESPONSE_HEADER"
}
