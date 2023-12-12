# --------------------------------------------------------------------------------
# Amazon API Gateway Deployment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment
# --------------------------------------------------------------------------------

variable "description" {
  description = "Description of the deployment."
  type        = string
  default     = null
}

variable "rest_api_id" {
  description = "REST API identifier."
  type        = string
}

variable "stage_description" {
  description = "Description to set on the stage managed by the `stage_name` argument."
  type        = string
  default     = null
}

variable "stage_name" {
  description = "Name of the stage to create with this deployment."
  type        = string
  default     = null
}

variable "triggers" {
  description = "Map of arbitrary keys and values that, when changed, will trigger a redeployment."
  type        = map(any)
  default     = {}
}

variable "variables" {
  description = "Map to set on the stage managed by the `stage_name` argument."
  type        = map(any)
  default     = {}
}
