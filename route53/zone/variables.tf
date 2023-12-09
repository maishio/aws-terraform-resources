# --------------------------------------------------------------------------------
# Amazon Route53 Hosted Zone
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone
# --------------------------------------------------------------------------------

variable "comment" {
  description = "Comment for the hosted zone. Defaults to `Managed by Terraform`."
  type        = string
  default     = "Managed by Terraform"
}

variable "delegation_set_id" {
  description = "ID of the reusable delegation set whose NS records you want to assign to the hosted zone."
  type        = string
  default     = null
}

variable "force_destroy" {
  description = "Whether to destroy all records in the zone when destroying the zone. Defaults to `false`."
  type        = bool
  default     = false
}

variable "name" {
  description = "The name of the hosted zone."
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "vpcs" {
  description = "A list of VPC objects for the dynamic block."
  type        = list(string)
  default     = []
}
