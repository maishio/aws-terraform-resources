# --------------------------------------------------------------------------------
# Amazon EventBridge Rule variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule
# --------------------------------------------------------------------------------

variable "description" {
  type    = string
  default = "Managed by Terraform"
}

variable "is_enabled" {
  type    = bool
  default = true
}

variable "name" {
  type    = string
  default = null
}

variable "schedule_expression" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon EventBridge Target variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target
# --------------------------------------------------------------------------------

variable "arn" {
  type    = string
  default = null
}

variable "rule" {
  type    = string
  default = null
}

variable "target_id" {
  type    = string
  default = null
}
