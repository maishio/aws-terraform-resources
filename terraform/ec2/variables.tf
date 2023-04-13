# Amazon EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

variable "ami" {
  description = "AMI to use for the instance."
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address."
  type        = bool
  default     = false
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile to launch the instance with."
  type        = string
  default     = null
}

variable "instance_type" {
  description = "Instance type to use for the instance."
  type        = string
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance."
  type        = string
  default     = null
}

variable "name" {
  description = "Instance name."
  type        = string
}

variable "private_ip" {
  description = "Private IP address to associate with the instance in a VPC."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "VPC Subnet ID to launch in."
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with."
  type        = list(string)
  default     = []
}

# root_block_device block
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance#root_block_device-arguments

variable "delete_on_termination" {
  description = "Whether the volume should be destroyed on instance termination."
  type        = bool
  default     = true
}

variable "encrypted" {
  description = "Whether to enable volume encryption."
  type        = bool
  default     = false
}

variable "volume_size" {
  description = "The size of the volume in gigabytes."
  type        = number
  default     = null
}

variable "volume_type" {
  description = "Type of volume. Valid values are gp2, gp3, io1, io2, st1, sc1, standard."
  type        = string
  default     = "gp3"
}

# Amazon VPC Elastic IP
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

variable "create_eip" {
  description = "Whether to create an Elastic IP (EIP) to attach to the instance."
  type        = bool
  default     = false
}

variable "eip_name" {
  description = "Elastic IP (EIP) name."
  type        = string
  default     = null
}

variable "vpc" {
  description = "Whether the Elastic IP (EIP) should be in the VPC or not."
  type        = bool
  default     = true
}

# Amazon VPC Elastic IP Association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association

variable "create_eip_association" {
  description = "Whether to create an Elastic IP (EIP) Association to attach to the instance."
  type        = bool
  default     = false
}
