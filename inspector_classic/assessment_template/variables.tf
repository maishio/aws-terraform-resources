# --------------------------------------------------------------------------------
# Amazon Inspector Classic Assessment Template
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_template
# --------------------------------------------------------------------------------

variable "duration" {
  description = "The duration of the inspector run."
  type        = number
}

variable "name" {
  description = "The name of the assessment template."
  type        = string
}

variable "rules_package_arns" {
  description = "The rules to be used during the run."
  type        = list(string)
}

variable "tags" {
  description = "Key-value map of tags for the Inspector assessment template."
  type        = map(string)
  default     = {}
}

variable "target_arn" {
  description = "The assessment target ARN to attach the template to."
  type        = string
}
