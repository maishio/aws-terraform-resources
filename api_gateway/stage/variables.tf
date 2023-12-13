# --------------------------------------------------------------------------------
# Amazon API Gateway Stage
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage
# --------------------------------------------------------------------------------

variable "access_log_settings" {
  description = "Dynamic block for access_log_settings."
  type        = list(any)
  default     = []
}

variable "deployment_id" {
  description = "ID of the deployment that the stage points to."
  type        = string
}

variable "description" {
  description = "Description of the stage."
  type        = string
  default     = null
}

variable "rest_api_id" {
  description = "ID of the associated REST API."
  type        = string
}

variable "stage_name" {
  description = "Name of the stage."
  type        = string
}

variable "tags" {
  description = "Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "variables" {
  description = "Map that defines the stage variables."
  type        = map(string)
  default     = {}
}

variable "xray_tracing_enabled" {
  description = "Whether active tracing with X-ray is enabled."
  type        = bool
  default     = false
}
