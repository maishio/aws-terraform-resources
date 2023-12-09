# --------------------------------------------------------------------------------
# Amazon SES Receipt Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule
# --------------------------------------------------------------------------------

variable "enabled" {
  description = "If true, the rule will be enabled."
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the receipt rule."
  type        = string
}

variable "rule_set_name" {
  description = "Name of the rule set."
  type        = string
}

variable "recipients" {
  description = "A list of email addresses."
  type        = list(string)
  default     = []
}

variable "scan_enabled" {
  description = "If true, incoming emails will be scanned for spam and viruses."
  type        = bool
  default     = true
}

variable "add_header_action" {
  description = "A list of Add Header Action blocks."
  type        = list(map(any))
  default     = []
}

variable "bounce_action" {
  description = "A list of Bounce Action blocks."
  type        = list(map(any))
  default     = []
}

variable "lambda_action" {
  description = "A list of Lambda Action blocks."
  type        = list(map(any))
  default     = []
}

variable "s3_action" {
  description = "A list of S3 Action blocks."
  type        = list(map(any))
  default     = []
}

variable "sns_action" {
  description = "A list of SNS Action blocks."
  type        = list(map(any))
  default     = []
}

variable "stop_action" {
  description = "A list of Stop Action blocks."
  type        = list(map(any))
  default     = []
}

variable "workmail_action" {
  description = "A list of WorkMail Action blocks."
  type        = list(map(any))
  default     = []
}
