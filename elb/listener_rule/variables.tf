# Elastic Load Balancer Listener Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule

variable "listener_arn" {
  description = "ARN of the listener to which to attach the rule."
  type        = string
}

variable "priority" {
  description = "Priority for the rule between `1` and `50000`."
  type        = number
  default     = null
}

variable "target_group_arn" {
  description = "ARN of the target group."
  type        = string
  default     = null
}

variable "type" {
  description = "Type of routing action."
  type        = string
}

variable "values" {
  description = "Contains a single values item which is a list of path patterns to match against the request URL."
  type        = list(any)
  default     = []
}
