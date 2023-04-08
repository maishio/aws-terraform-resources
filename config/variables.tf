# AWS Config Configuration Recorder
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder

variable "all_supported" {
  description = "Specifies whether AWS Config records configuration changes for every supported type of regional resource."
  type        = bool
  default     = true
}

variable "include_global_resource_types" {
  description = "Specifies whether AWS Config includes all supported types of global resources with the resources that it records."
  type        = bool
  default     = false
}

variable "recorder_name" {
  description = "Name of the recorder. Defaults to `default`."
  type        = string
  default     = "default"
}

variable "role_arn" {
  description = "ARN of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account."
  type        = string
}

variable "resource_types" {
  description = "A list that specifies the types of AWS resources for which AWS Config records configuration changes."
  type        = list(string)
  default     = []
}

# AWS Config Delivery Channel
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_delivery_channel

variable "channel_name" {
  description = "Name of the delivery channel. Defaults to `default`."
  type        = string
  default     = "default"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket."
  type        = string
}

variable "s3_key_prefix" {
  description = "Prefix for the specified S3 bucket."
  type        = string
  default     = null
}

# AWS Config Configuration Recorder Status
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder_status

variable "is_enabled" {
  description = "Whether the configuration recorder should be enabled or disabled."
  type        = bool
  default     = true
}
