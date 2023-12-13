# --------------------------------------------------------------------------------
# Amazon API Gateway Domain Name
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name
# --------------------------------------------------------------------------------

variable "certificate_arn" {
  description = "ARN for an AWS-managed certificate."
  type        = string
  default     = null
}

variable "domain_name" {
  description = "Fully-qualified domain name to register."
  type        = string
}

variable "security_policy" {
  description = "Transport Layer Security (TLS) version + cipher suite for this DomainName."
  type        = string
  default     = null
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "types" {
  description = "List of endpoint types."
  type        = list(string)
  default     = []
}
