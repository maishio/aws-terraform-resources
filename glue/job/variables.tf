# --------------------------------------------------------------------------------
# AWS Glue Job
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job
# --------------------------------------------------------------------------------

variable "connections" {
  description = "The list of connections used for this job."
  type        = list(string)
  default     = []
}

variable "default_arguments" {
  description = "The map of default arguments for this job."
  type        = map(string)
  default     = {}
}

variable "execution_class" {
  description = " Indicates whether the job is run with a standard or flexible execution class."
  type        = string
  default     = "STANDARD"
}

variable "glue_version" {
  description = "The version of glue to use, for example `1.0`."
  type        = string
  default     = null
}

variable "max_capacity" {
  description = "The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs."
  type        = number
  default     = null
}

variable "max_retries" {
  description = "The maximum number of times to retry this job if it fails."
  type        = number
  default     = 0
}

variable "name" {
  description = "The name you assign to this job."
  type        = string
}

variable "non_overridable_arguments" {
  description = "Non-overridable arguments for this job, specified as name-value pairs."
  type        = map(string)
  default     = {}
}

variable "number_of_workers" {
  description = "The number of workers of a defined workerType that are allocated when a job runs."
  type        = number
  default     = null
}

variable "role_arn" {
  description = "The ARN of the IAM role associated with this job."
  type        = string
}

variable "security_configuration" {
  description = "The name of the Security Configuration to be associated with the job."
  type        = string
  default     = null
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "timeout" {
  description = "The job timeout in minutes."
  type        = number
  default     = 2880
}

variable "worker_type" {
  description = "The type of predefined worker that is allocated when a job runs."
  type        = string
  default     = null
}

/* command argument */

variable "command_name" {
  description = "The name of the job command."
  type        = string
  default     = "glueetl"
}

variable "python_version" {
  description = "The Python version being used to execute a Python shell job."
  type        = string
  default     = null
}

variable "script_location" {
  description = "Specifies the S3 path to a script that executes a job."
  type        = string
}

/* execution_property argument */

variable "max_concurrent_runs" {
  description = "The maximum number of concurrent runs allowed for a job."
  type        = number
  default     = 1
}
