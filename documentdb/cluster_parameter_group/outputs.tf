# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster Parameter Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group
# --------------------------------------------------------------------------------

output "docdb_cluster_parameter_group" {
  value = aws_docdb_cluster_parameter_group.this
}
