# Amazon CloudFront Function
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function

variable "comment" {
  description = "A comment to describe the function."
  type        = string
  default     = "Managed by Terraform"
}

variable "name" {
  description = "Unique name for your CloudFront Function."
  type        = string
  default     = null
}

variable "path" {
  description = "Path to the CloudFront Function code."
  type        = string
}

variable "publish" {
  description = "Whether to publish creation/change as Live CloudFront Function Version."
  type        = bool
  default     = false
}

variable "runtime" {
  description = "Identifier of the function's runtime."
  type        = string
  default     = "cloudfront-js-1.0"
}

variable "vars" {
  description = "Variables to pass to the CloudFront Function code."
  type        = any
  default     = {}
}
