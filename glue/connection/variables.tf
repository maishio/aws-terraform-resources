# --------------------------------------------------------------------------------
# AWS Glue Connection
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_connection
# --------------------------------------------------------------------------------

variable "catalog_id" {
  description = "The ID of the Data Catalog in which to create the connection."
  type        = string
  default     = null
}

variable "connection_properties" {
  description = "A map of key-value pairs used as parameters for this connection."
  type        = map(string)
  default     = {}
}

variable "connection_type" {
  description = "The type of the connection."
  type        = string
  default     = "JDBC"
}

variable "description" {
  description = "Description of the connection."
  type        = string
  default     = null
}

variable "match_criteria" {
  description = "A list of criteria that can be used in selecting this connection."
  type        = list(string)
  default     = []
}

variable "name" {
  description = "The name of the connection."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}

/* physical_connection_requirements arguments */

variable "physical_connection_requirements" {
  description = "dynamic block for physical_connection_requirements."
  type        = list(any)
  default     = []
}
