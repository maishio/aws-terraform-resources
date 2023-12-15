# --------------------------------------------------------------------------------
# Amazon ElastiCache Replication Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group
# --------------------------------------------------------------------------------

output "elasticache_replication_group" {
  value = aws_elasticache_replication_group.this
}
