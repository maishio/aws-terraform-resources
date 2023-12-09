# Amazon SNS Topic Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription

variable "endpoint" {
  description = "Endpoint to send data to. The contents vary with the protocol."
  type        = string
}

variable "protocol" {
  description = "Protocol to use."
  type        = string
}

variable "subscription_role_arn" {
  description = "ARN of the IAM role to publish to Kinesis Data Firehose delivery stream."
  type        = string
  default     = null
}

variable "topic_arn" {
  description = "ARN of the SNS topic to subscribe to."
  type        = string
}
