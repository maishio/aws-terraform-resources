# --------------------------------------------------------------------------------
# Amazon API Gateway Base Path Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping
# --------------------------------------------------------------------------------

variable "api_id" {
  description = "ID of the API to connect."
  type        = string
}

variable "base_path" {
  description = "Path segment that must be prepended to the path when accessing the API via this mapping."
  type        = string
}

variable "domain_name" {
  description = "Already-registered domain name to connect the API to."
  type        = string
}

variable "stage_name" {
  description = "Name of a specific deployment stage to expose at the given path."
  type        = string
}
