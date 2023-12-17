# --------------------------------------------------------------------------------
# AWS IAM Access Analyzer Analyzer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/accessanalyzer_analyzer
# --------------------------------------------------------------------------------

variable "analyzer_name" {
  description = "Name of the Analyzer."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "Type of Analyzer."
  type        = string
  default     = "ACCOUNT"
}
