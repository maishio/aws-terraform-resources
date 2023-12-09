# --------------------------------------------------------------------------------
# Amazon CloudWatch Logs Subscription Filter
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter
# --------------------------------------------------------------------------------

variable "destination_arn" {
  description = "ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN."
  type        = string
  default     = null
}

variable "distribution" {
  description = "Method used to distribute log data to the destination."
  type        = string
  default     = "ByLogStream"
}

variable "filter_pattern" {
  description = "A valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events."
  type        = string
  default     = ""
}

variable "log_group_name" {
  description = "Name of the log group."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the subscription filter."
  type        = string
  default     = null
}
