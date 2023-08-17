# Amazon API Gateway V2 Deployment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_deployment

variable "api_id" {
  description = "API identifier."
  type        = string
}

variable "description" {
  description = "Description for the deployment resource."
  type        = string
  default     = null
}

variable "triggers" {
  description = "Map of arbitrary keys and values that, when changed, will trigger a redeployment."
  type        = any
  default     = {}
}
