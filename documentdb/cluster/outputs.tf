# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster
# --------------------------------------------------------------------------------

output "docdb_cluster" {
  value = aws_docdb_cluster.this
}
