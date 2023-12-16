# --------------------------------------------------------------------------------
# AWS Step Functions State Machine
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine
# --------------------------------------------------------------------------------

variable "name" {
  description = "The name of the state machine."
  type        = string
}

variable "path" {
  description = "path to the JSON document for setting the definition."
  type        = string
}

variable "role_arn" {
  description = "ARN of the IAM role to use for this state machine."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "vars" {
  description = "Variables used in the JSON document for setting the definition."
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "Determines whether a Standard or Express state machine is created."
  type        = string
  default     = "STANDARD"
}

/* logging_configuration arguments */

variable "include_execution_data" {
  description = "Determines whether execution data is included in your log."
  type        = bool
  default     = false
}

variable "level" {
  description = "Defines which category of execution history events are logged."
  type        = string
  default     = null
}

variable "log_destination" {
  description = "ARN of a CloudWatch log group."
  type        = string
  default     = null
}
