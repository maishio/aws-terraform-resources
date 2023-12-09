# --------------------------------------------------------------------------------
# Amazon SNS Topic Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy
# --------------------------------------------------------------------------------

variable "arn" {
  description = "ARN of the SNS topic."
  type        = string
}

variable "path" {
  description = "File path to the SNS topic policy template."
  type        = string
}

variable "vars" {
  description = "A map of variables to substitute into the SNS topic policy template."
  type        = map(string)
  default     = {}
}
