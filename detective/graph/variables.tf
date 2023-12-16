# --------------------------------------------------------------------------------
# Amazon Detective Graph
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/detective_graph
# --------------------------------------------------------------------------------

variable "tags" {
  description = "A map of tags to assign to the instance."
  type        = map(string)
  default     = {}
}
