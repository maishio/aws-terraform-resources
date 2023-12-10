# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance
# --------------------------------------------------------------------------------

output "docdb_cluster_instance" {
  value = aws_docdb_cluster_instance.this
}
