# --------------------------------------------------------------------------------
# Amazon VPC Subnet variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
# --------------------------------------------------------------------------------

variable "cidr_blocks" {
  type = list(string)
}

variable "subnet" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "map_public_ip_on_launch" {
  type    = string
  default = false
}

variable "tags" {
  type    = map(string)
  default = {}
}
