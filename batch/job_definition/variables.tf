# --------------------------------------------------------------------------------
# AWS Batch Job Definition
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_definition
# --------------------------------------------------------------------------------

variable "name" {
  description = "Specifies the name of the job definition."
  type        = string
}

variable "parameters" {
  description = "Specifies the parameter substitution placeholders to set in the job definition."
  type        = map(string)
  default     = {}
}

variable "path" {
  description = "path to the JSON document for setting the container_properties."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "The type of job definition. "
  type        = string
}

variable "vars" {
  description = "Variables used in the JSON document for setting the container_properties."
  type        = map(string)
  default     = {}
}

variable "platform_capabilities" {
  description = "The platform capabilities required by the job definition."
  type        = list(string)
  default     = ["EC2"]
}

variable "propagate_tags" {
  description = "Specifies whether to propagate the tags from the job definition to the corresponding Amazon ECS task."
  type        = bool
  default     = false
}
