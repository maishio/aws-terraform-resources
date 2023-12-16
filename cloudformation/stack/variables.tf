# --------------------------------------------------------------------------------
# AWS CloudFormation Stack
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack
# --------------------------------------------------------------------------------

variable "capabilities" {
  description = "A list of capabilities."
  type        = list(string)
  default     = []
}

variable "name" {
  description = "Stack name."
  type        = string
}

variable "parameters" {
  description = "A map of Parameter structures that specify input parameters for the stack."
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Map of resource tags to associate with this stack."
  type        = map(string)
  default     = {}
}

variable "template_body" {
  description = "Structure containing the template body (max size: 51,200 bytes)."
  type        = string
  default     = null
}

variable "template_url" {
  description = "Location of a file containing the template body (max size: 460,800 bytes)."
  type        = string
  default     = null
}
