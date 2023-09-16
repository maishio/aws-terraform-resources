# Amazon SQS Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue

variable "content_based_deduplication" {
  description = "Enables content-based deduplication for FIFO queues."
  type        = bool
  default     = false
}

variable "delay_seconds" {
  description = "The time in seconds that the delivery of all messages in the queue will be delayed."
  type        = number
  default     = 0
}

variable "fifo_queue" {
  description = "Boolean designating a FIFO queue."
  type        = bool
  default     = false
}

variable "kms_data_key_reuse_period_seconds" {
  description = "The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again."
  type        = number
  default     = 300
}

variable "max_message_size" {
  description = "The limit of how many bytes a message can contain before Amazon SQS rejects it."
  type        = number
  default     = 262144
}

variable "message_retention_seconds" {
  description = "The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days)."
  type        = number
  default     = 345600
}

variable "name" {
  description = "The name of the queue."
  type        = string
}

variable "policy_path" {
  description = "The template file to use for the SQS queue policy."
  type        = string
  default     = null
}

variable "policy_vars" {
  description = "The variables to use for the SQS queue policy."
  type        = map(string)
  default     = {}
}

variable "receive_wait_time_seconds" {
  description = "The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning."
  type        = number
  default     = 0
}

variable "redrive_policy" {
  description = "The template file to use for the Dead Letter Queue policy."
  type        = string
  default     = null
}

variable "redrive_policy_vars" {
  description = "The variables to use for the Dead Letter Queue policy."
  type        = map(string)
  default     = {}
}

variable "sqs_managed_sse_enabled" {
  description = "Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "visibility_timeout_seconds" {
  description = "The visibility timeout for the queue. An integer from 0 to 43200 (12 hours)."
  type        = number
  default     = 0
}
