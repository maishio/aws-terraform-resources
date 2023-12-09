# --------------------------------------------------------------------------------
# Amazon SNS Topic
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic
# --------------------------------------------------------------------------------

variable "display_name" {
  description = "Display name for the SNS topic."
  type        = string
  default     = null
}

variable "fifo_topic" {
  description = "Boolean indicating whether or not to create a FIFO (first-in-first-out) topic."
  type        = bool
  default     = false
}

variable "lambda_failure_feedback_role_arn" {
  description = "IAM role for failure feedback."
  type        = string
  default     = null
}

variable "lambda_success_feedback_role_arn" {
  description = "IAM role permitted to receive success feedback for this topic."
  type        = string
  default     = null
}

variable "lambda_success_feedback_sample_rate" {
  description = "Percentage of success to sample."
  type        = number
  default     = 0
}

variable "name" {
  description = "Name of the topic."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
