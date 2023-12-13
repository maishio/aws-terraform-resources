# --------------------------------------------------------------------------------
# Amazon API Gateway Resource
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource
# --------------------------------------------------------------------------------

variable "parent_id" {
  description = "ID of the parent API resource."
  type        = string
}

variable "path_part" {
  description = "Last path segment of this API resource."
  type        = string
}

variable "rest_api_id" {
  description = "ID of the associated REST API."
  type        = string
}
