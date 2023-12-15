# --------------------------------------------------------------------------------
# AWS Batch Job Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_queue
# --------------------------------------------------------------------------------

variable "compute_environments" {
  description = "List of compute environment ARNs mapped to a job queue."
  type        = list(string)
}

variable "name" {
  description = "Specifies the name of the job queue."
  type        = string
}

variable "priority" {
  description = "The priority of the job queue."
  type        = number
}

variable "state" {
  description = "The state of the job queue."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
