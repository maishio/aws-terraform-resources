# --------------------------------------------------------------------------------
# Amazon VPC Security Group variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group
# --------------------------------------------------------------------------------

variable "description" {
  type    = string
  default = "Managed by Terraform"
}

variable "egress_rule" {
  default = {
    0 = {
      description              = null
      from_port                = 0,
      to_port                  = 0,
      protocol                 = "-1"
      cidr_blocks              = ["0.0.0.0/0"]
      source_security_group_id = null
    }
  }
}

variable "ingress_rule" {
  default = {}
}

variable "security_group_name" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "vpc_id" {
  type = string
}
