# --------------------------------------------------------------------------------
# Amazon Inspector Classic Resource Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_resource_group
# --------------------------------------------------------------------------------

variable "tags" {
  description = "Key-value map of tags that are used to select the EC2 instances to be included in an `Amazon Inspector assessment target`."
  type        = map(string)
}
