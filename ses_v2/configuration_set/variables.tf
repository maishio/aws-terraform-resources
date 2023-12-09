# --------------------------------------------------------------------------------
# Amazon SESv2 (Simple Email V2) Configuration Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_configuration_set
# --------------------------------------------------------------------------------

variable "configuration_set_name" {
  description = "Name of the configuration set."
  type        = string
}

variable "reputation_metrics_enabled" {
  description = "If `true`, tracking of reputation metrics is enabled for the configuration set. If `false`, tracking of reputation metrics is disabled for the configuration set."
  type        = bool
  default     = false
}

variable "sending_enabled" {
  description = "If `true`, email sending is enabled for the configuration set. If `false`, email sending is disabled for the configuration set."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
