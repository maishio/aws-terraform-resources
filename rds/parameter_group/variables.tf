# --------------------------------------------------------------------------------
# Amazon RDS Parameter Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group
# --------------------------------------------------------------------------------

variable "description" {
  description = "The description of the DB parameter group."
  type        = string
  default     = "Managed by Terraform"
}

variable "family" {
  description = "The family of the DB parameter group."
  type        = string
}

variable "name" {
  description = "The name of the DB parameter group."
  type        = string
}

variable "parameters" {
  description = "Dynamic block for create the parameter."
  type        = any
  default     = []
}

variable "tags" {
  description = "Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
