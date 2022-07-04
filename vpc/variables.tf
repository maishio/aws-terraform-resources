# --------------------------------------------------------------------------------
# Amazon VPC variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
# --------------------------------------------------------------------------------

variable "vpc_name" {
  type = string
}

variable "cidr_block" {
  type = string
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

variable "instance_tenancy" {
  type    = string
  default = "default"
}

variable "tags" {
  type    = map(string)
  default = {}
}
