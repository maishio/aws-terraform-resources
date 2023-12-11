# --------------------------------------------------------------------------------
# Amazon RDS Option Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_option_group
# --------------------------------------------------------------------------------

variable "engine_name" {
  description = "Specifies the name of the engine that this option group should be associated with."
  type        = string
}

variable "major_engine_version" {
  description = "Specifies the major version of the engine that this option group should be associated with."
  type        = string
}

variable "name" {
  description = "Name of the option group."
  type        = string
}

variable "options" {
  description = "Dynamic block for create the option."
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
