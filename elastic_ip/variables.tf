# Amazon EC2 Elastic IP
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

variable "name" {
  description = "Name of the Elastic IP."
  type        = string
  default     = null
}

variable "vpc" {
  description = "Boolean if the EIP is in a VPC or not."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
