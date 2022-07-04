# --------------------------------------------------------------------------------
# Amazon VPC Route Table variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
# --------------------------------------------------------------------------------

variable "route" {
  type    = any
  default = []
}

variable "nat_gateway_ids" {
  type    = any
  default = []
}

variable "subnet" {
  type = string
}

variable "subnet_ids" {
  type    = list(string)
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type = string
}
