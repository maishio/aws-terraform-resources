# --------------------------------------------------------------------------------
# Amazon RDS Cluster Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_instance
# --------------------------------------------------------------------------------

output "rds_cluster_instance" {
  value = aws_rds_cluster_instance.this
}
