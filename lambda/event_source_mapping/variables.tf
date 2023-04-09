# AWS Lambda Event Source Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping

variable "batch_size" {
  description = "The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function."
  type        = number
  default     = null
}

variable "enabled" {
  description = "Determines if the mapping will be enabled on creation. Defaults to `true`."
  type        = bool
  default     = true
}

variable "event_source_arn" {
  description = "ARN of the event source."
  type        = string
  default     = null
}

variable "function_name" {
  description = "Name of the function."
  type        = string
}

variable "maximum_batching_window_in_seconds" {
  description = "Maximum amount of time to gather records before invoking the function, in seconds(between 0 and 300)."
  type        = number
  default     = null
}

variable "starting_position" {
  description = "The position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON`."
  type        = string
  default     = null
}
