# --------------------------------------------------------------------------------
# Amazon ElastiCache Subnet Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_subnet_group
# --------------------------------------------------------------------------------

output "elasticache_subnet_group" {
  value = aws_elasticache_subnet_group.this
}
