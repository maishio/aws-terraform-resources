# --------------------------------------------------------------------------------
# AWS IAM Role variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role
# --------------------------------------------------------------------------------

variable "role_name" {
  type    = string
  default = null
}

variable "service" {
  type    = string
  default = null
}

variable "role_path" {
  type = string
}

variable "role_vars" {
  type    = map(string)
  default = {}
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# AWS IAM Policy variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy
# --------------------------------------------------------------------------------

variable "path" {
  type    = string
  default = "/"
}

variable "policy_name" {
  type    = string
  default = null
}

variable "policy_path" {
  type    = string
  default = null
}

variable "policy_vars" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# AWS IAM Instance Profile variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile
# --------------------------------------------------------------------------------

variable "create_iam_instance_profile" {
  type    = bool
  default = false
}

variable "profile_name" {
  type    = string
  default = null
}