# --------------------------------------------------------------------------------
# Amazon ECR variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository
# --------------------------------------------------------------------------------

variable "name" {
  type = string
}

variable "image_tag_mutability" {
  type    = string
  default = "MUTABLE"
}

variable "scan_on_push" {
  type    = bool
  default = true
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon ECR Lifecycle Policy variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_lifecycle_policy
# --------------------------------------------------------------------------------

variable "path" {
  type = string
}

variable "vars" {
  type    = map(string)
  default = {}
}
