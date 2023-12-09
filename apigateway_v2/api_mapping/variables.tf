# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Api Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api_mapping
# --------------------------------------------------------------------------------

variable "api_id" {
  description = "API identifier."
  type        = string
}

variable "domain_name" {
  description = "Domain name."
  type        = string
}

variable "stage" {
  description = "Stage name."
  type        = string
}
