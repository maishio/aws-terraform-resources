# --------------------------------------------------------------------------------
# Amazon Detective Graph
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/detective_graph
# --------------------------------------------------------------------------------

output "detective_graph" {
  value = aws_detective_graph.this
}
