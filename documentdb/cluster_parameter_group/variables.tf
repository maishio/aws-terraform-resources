# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster Parameter Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group
# --------------------------------------------------------------------------------

variable "description" {
  description = "The description of the DocumentDB cluster parameter group."
  type        = string
  default     = "Managed by Terraform"
}

variable "family" {
  description = "The family of the DocumentDB cluster parameter group."
  type        = string
}

variable "name" {
  description = "The name of the DocumentDB cluster parameter group."
  type        = string
}

variable "parameter" {
  description = "A list of DocumentDB parameters to apply."
  type        = list(any)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
