# --------------------------------------------------------------------------------
# Amazon GuardDuty Detector
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector
# --------------------------------------------------------------------------------

variable "enable" {
  description = "Whether to enable GuardDuty Detector. Defaults to `true`."
  type        = bool
  default     = true
}

variable "finding_publishing_frequency" {
  description = "Frequency of publishing the finding. The possible values are `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. Defaults to `SIX_HOURS`."
  type        = string
  default     = "SIX_HOURS"
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
