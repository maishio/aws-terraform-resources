# --------------------------------------------------------------------------------
# Amazon VPC Internet Gateway variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway
# --------------------------------------------------------------------------------

variable "internet_gateway_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
