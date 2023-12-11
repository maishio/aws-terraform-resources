# --------------------------------------------------------------------------------
# Amazon RDS Subnet Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group
# --------------------------------------------------------------------------------

variable "description" {
  description = "The description of the DB subnet group."
  type        = string
  default     = "Managed by Terraform"
}
variable "name" {
  description = "The name of the DB subnet group."
  type        = string
}

variable "subnet_ids" {
  description = "A list of VPC subnet IDs."
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
