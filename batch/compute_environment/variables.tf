# --------------------------------------------------------------------------------
# AWS Batch Compute Environment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_compute_environment
# --------------------------------------------------------------------------------

variable "compute_environment_name" {
  description = "The name for your compute environment."
  type        = string
}

variable "service_role" {
  description = "ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf."
  type        = string
}

variable "state" {
  description = "The state of the compute environment."
  type        = string
  default     = "ENABLED"
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

variable "type" {
  description = "The type of the compute environment."
  type        = string
}

/* compute_resources属性 */

variable "allocation_strategy" {
  description = "The allocation strategy to use for the compute resource in case not enough instances of the best fitting instance type can be allocated."
  type        = string
  default     = "BEST_FIT"
}

variable "bid_percentage" {
  description = "Integer of maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched."
  type        = number
  default     = 0
}

variable "desired_vcpus" {
  description = "The desired number of EC2 vCPUS in the compute environment."
  type        = number
  default     = 0
}

variable "instance_role" {
  description = "The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment."
  type        = string
  default     = null
}

variable "instance_type" {
  description = "A list of instance types that may be launched."
  type        = list(string)
  default     = []
}

variable "max_vcpus" {
  description = "The maximum number of EC2 vCPUs that an environment can reach."
  type        = number
}

variable "min_vcpus" {
  description = " The minimum number of EC2 vCPUs that an environment should maintain."
  type        = number
  default     = 0
}

variable "security_group_ids" {
  description = "A list of EC2 security group that are associated with instances launched in the compute environment."
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "A list of VPC subnets into which the compute resources are launched."
  type        = list(string)
}

variable "compute_resources_tags" {
  description = "Key-value pair tags to be applied to resources that are launched in the compute environment."
  type        = map(string)
  default     = {}
}

variable "compute_resources_type" {
  description = "The type of compute environment."
  type        = string
}

variable "ec2_configuration" {
  description = "Dynamic block for ec2_configuration."
  type        = list(any)
  default     = []
}
