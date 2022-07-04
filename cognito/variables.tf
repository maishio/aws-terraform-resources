# --------------------------------------------------------------------------------
# Amazon Cognito User Pool variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool
# --------------------------------------------------------------------------------

variable "auto_verified_attributes" {
  type    = list(string)
  default = []
}

variable "mfa_configuration" {
  type    = string
  default = "OFF"
}

variable "user_pool_name" {
  type = string
}

variable "allow_admin_create_user_only" {
  type    = bool
  default = true
}

variable "email_sending_account" {
  type    = string
  default = "COGNITO_DEFAULT"
}

variable "minimum_length" {
  type    = number
  default = 8
}

variable "require_lowercase" {
  type    = bool
  default = true
}

variable "require_numbers" {
  type    = bool
  default = true
}

variable "require_symbols" {
  type    = bool
  default = true
}

variable "require_uppercase" {
  type    = bool
  default = true
}

variable "temporary_password_validity_days" {
  type    = number
  default = 1
}

variable "default_email_option" {
  type    = string
  default = "CONFIRM_WITH_CODE"
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon Cognito User Pool Client variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client
# --------------------------------------------------------------------------------

variable "access_token_validity" {
  type    = number
  default = 0
}

variable "allowed_oauth_flows" {
  type    = list(string)
  default = []
}

variable "allowed_oauth_flows_user_pool_client" {
  type    = bool
  default = true
}

variable "allowed_oauth_scopes" {
  type    = list(string)
  default = []
}

variable "callback_urls" {
  type    = list(string)
  default = []
}

variable "enable_token_revocation" {
  type    = bool
  default = true
}

variable "explicit_auth_flows" {
  type    = list(string)
  default = []
}

variable "generate_secret" {
  type    = bool
  default = false
}

variable "id_token_validity" {
  type    = number
  default = 0
}

variable "logout_urls" {
  type    = list(string)
  default = []
}

variable "user_pool_client_name" {
  type = string
}

variable "read_attributes" {
  type    = list(string)
  default = []
}

variable "refresh_token_validity" {
  type    = number
  default = 30
}

variable "supported_identity_providers" {
  type    = list(string)
  default = []
}

variable "write_attributes" {
  type    = list(string)
  default = []
}

# --------------------------------------------------------------------------------
# Amazon Cognito User Pool Domain variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_domain
# --------------------------------------------------------------------------------

variable "certificate_arn" {
  type    = string
  default = null
}

variable "domain" {
  type = string
}

# --------------------------------------------------------------------------------
# Amazon Route53 Record variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
# --------------------------------------------------------------------------------

variable "evaluate_target_health" {
  type    = bool
  default = true
}

variable "record_name" {
  type = string
}

variable "type" {
  type = string
}

variable "zone_id" {
  type = string
}
