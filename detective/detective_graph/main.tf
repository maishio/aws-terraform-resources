# --------------------------------------------------------------------------------
# Amazon Detective Graph
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/detective_graph
# --------------------------------------------------------------------------------

resource "aws_detective_graph" "this" {
  tags = var.tags
}
