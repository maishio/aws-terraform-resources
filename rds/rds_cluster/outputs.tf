# --------------------------------------------------------------------------------
# Amazon RDS Cluster
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster
# --------------------------------------------------------------------------------

output "rds_cluster" {
  value = aws_rds_cluster.this
}
