# --------------------------------------------------------------------------------
# Amazon EC2 Key Pair
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair
# --------------------------------------------------------------------------------

variable "key_name" {
  description = "The name for the key pair."
  type        = string
}

variable "public_key" {
  description = "The public key material."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}
