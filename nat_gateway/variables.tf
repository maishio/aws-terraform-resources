# --------------------------------------------------------------------------------
# Amazon VPC Nat Gateway variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway
# --------------------------------------------------------------------------------

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "vpc" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}
