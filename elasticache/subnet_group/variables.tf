# --------------------------------------------------------------------------------
# Amazon ElastiCache Subnet Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group
# --------------------------------------------------------------------------------

variable "description" {
  description = "Description for the cache subnet group."
  type        = string
  default     = "Managed by Terraform"
}

variable "name" {
  description = "Name for the cache subnet group."
  type        = string
}

variable "subnet_ids" {
  description = "List of VPC Subnet IDs for the cache subnet group."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
