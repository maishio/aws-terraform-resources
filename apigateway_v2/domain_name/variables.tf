# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Domain Name
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_domain_name
# --------------------------------------------------------------------------------

variable "domain_name" {
  description = "Domain name."
  type        = string
}

variable "certificate_arn" {
  description = "ARN of an AWS-managed certificate that will be used by the endpoint for the domain name."
  type        = string
}

variable "endpoint_type" {
  description = "Endpoint type. Valid values: `REGIONAL`."
  type        = string
  default     = "REGIONAL"
}

variable "security_policy" {
  description = "TLS version of the security policy for the domain name. Valid values: `TLS_1_2`."
  type        = string
  default     = "TLS_1_2"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
