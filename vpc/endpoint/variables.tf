# --------------------------------------------------------------------------------
# Amazon VPC Endpoint
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint
# --------------------------------------------------------------------------------

variable "endpoint_name" {
  description = "The name of the VPC endpoint."
  type        = string
}

variable "path" {
  description = "The path to the policy document."
  type        = string
  default     = null
}

variable "private_dns_enabled" {
  description = "Whether or not to associate a private hosted zone with the specified VPC."
  type        = bool
  default     = false
}

variable "route_table_ids" {
  description = "One or more route table IDs to associate with the endpoint."
  type        = list(string)
  default     = []
}

variable "security_group_ids" {
  description = "One or more security group IDs to associate with the network interface."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "The service name."
  type        = string
}

variable "subnet_ids" {
  description = "One or more subnet IDs to associate with the endpoint."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "vars" {
  description = "The variables to use in the policy document."
  type        = map(string)
  default     = {}
}

variable "vpc_endpoint_type" {
  description = "The type of VPC endpoint. Valid values are Gateway, Interface, and GatewayLoadBalancer. Defaults to Gateway."
  type        = string
  default     = "Gateway"
}

variable "vpc_id" {
  description = "The ID of the VPC in which the endpoint will be used."
  type        = string
}
