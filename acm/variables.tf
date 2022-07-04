# --------------------------------------------------------------------------------
# AWS ACM Certificate variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate
# --------------------------------------------------------------------------------

variable "domain_name" {
  type = string
}

variable "validation_method" {
  type = string
}

# --------------------------------------------------------------------------------
# Amazon Route53 Record variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
# --------------------------------------------------------------------------------

variable "allow_overwrite" {
  type    = bool
  default = true
}

variable "ttl" {
  type    = number
  default = 300
}

variable "zone_id" {
  type = string
}
