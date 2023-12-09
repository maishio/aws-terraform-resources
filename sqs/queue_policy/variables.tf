# --------------------------------------------------------------------------------
# Amazon SQS Queue Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy
# --------------------------------------------------------------------------------

variable "queue_url" {
  description = "The URL of the SQS Queue to which to attach the policy."
  type        = string
}

variable "path" {
  description = "The template file to use for the SQS queue policy."
  type        = string
  default     = null
}

variable "vars" {
  description = "The variables to use for the SQS queue policy."
  type        = map(string)
  default     = {}
}
