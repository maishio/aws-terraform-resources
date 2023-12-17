# --------------------------------------------------------------------------------
# Amazon Inspector Classic Assessment Target
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_target
# --------------------------------------------------------------------------------

variable "name" {
  description = "The name of the assessment target."
  type        = string
}

variable "resource_group_arn" {
  description = "Inspector Resource Group ARN stating tags for instance matching."
  type        = string
  default     = null
}
