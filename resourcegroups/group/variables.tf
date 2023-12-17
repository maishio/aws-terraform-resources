# --------------------------------------------------------------------------------
# AWS Resource Groups Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourcegroups_group
# --------------------------------------------------------------------------------

variable "description" {
  description = "A description of the resource group."
  type        = string
  default     = null
}

variable "name" {
  description = "The resource group's name."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

/* resource_query arguments */

variable "path" {
  description = "path to the JSON document for setting the resource_query."
  type        = string
}

variable "vars" {
  description = "Variables used in the JSON document for setting the resource_query."
  type        = any
  default     = {}
}
