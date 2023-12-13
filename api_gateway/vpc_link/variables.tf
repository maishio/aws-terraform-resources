# --------------------------------------------------------------------------------
# Amazon API Gateway VPC Link
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_vpc_link
# --------------------------------------------------------------------------------

variable "description" {
  description = "Description of the VPC link."
  type        = string
  default     = null
}

variable "name" {
  description = "Name used to label and identify the VPC link."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "target_arns" {
  description = "List of network load balancer arns in the VPC targeted by the VPC link."
  type        = list(string)
  default     = []
}
