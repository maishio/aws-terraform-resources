# --------------------------------------------------------------------------------
# Amazon API Gateway Usage Plan Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key
# --------------------------------------------------------------------------------

variable "key_ids" {
  description = "Identifier of the API key resource."
  type        = string
}

variable "key_type" {
  description = "Type of the API key resource."
  type        = string
  default     = "API_KEY"
}

variable "usage_plan_id" {
  description = "Id of the usage plan resource representing to associate the key to."
  type        = string
}
