# --------------------------------------------------------------------------------
# Amazon API Gateway Usage Plan
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan
# --------------------------------------------------------------------------------

variable "description" {
  description = "Description of a usage plan."
  type        = string
  default     = null
}

variable "name" {
  description = "Name of the usage plan."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

/* Api Stages */

variable "api_id" {
  description = "API Id of the associated API stage in a usage plan."
  type        = string
}

variable "stage" {
  description = "API stage name of the associated API stage in a usage plan."
  type        = string
}

/* Quota Settings */

variable "limit" {
  description = "Maximum number of requests that can be made in a given time period."
  type        = number
  default     = 0
}

variable "offset" {
  description = "Number of requests subtracted from the given limit in the initial time period."
  type        = number
  default     = 0
}

variable "period" {
  description = " Time period in which the limit applies."
  type        = string
  default     = "DAY"
}

/* Throttling Settings */

variable "burst_limit" {
  description = "The API request burst limit."
  type        = number
  default     = null
}

variable "rate_limit" {
  description = "The API request steady-state rate limit."
  type        = number
  default     = null
}
