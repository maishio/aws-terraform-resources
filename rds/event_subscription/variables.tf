# --------------------------------------------------------------------------------
# Amazon RDS Event Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_event_subscription
# --------------------------------------------------------------------------------

variable "enabled" {
  description = "A boolean flag to enable/disable the subscription."
  type        = bool
  default     = true
}

variable "event_categories" {
  description = "A list of event categories for a SourceType that you want to subscribe to."
  type        = list(string)
  default     = []
}

variable "name" {
  description = "The name of the DB event subscription."
  type        = string
  default     = null
}

variable "sns_topic" {
  description = "The SNS topic to send events to."
  type        = string
  default     = null
}

variable "source_ids" {
  description = "A list of identifiers of the event sources for which events will be returned."
  type        = list(string)
  default     = []
}

variable "source_type" {
  description = "The type of source that will be generating the events."
  type        = string
  default     = "db-instance"
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
