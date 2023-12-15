# --------------------------------------------------------------------------------
# Amazon ElastiCache Replication Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/elasticache_replication_group
# --------------------------------------------------------------------------------

resource "aws_elasticache_replication_group" "this" {
  apply_immediately          = var.apply_immediately
  at_rest_encryption_enabled = var.at_rest_encryption_enabled
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  automatic_failover_enabled = var.automatic_failover_enabled
  description                = var.description
  engine                     = var.engine
  engine_version             = var.engine_version
  maintenance_window         = var.maintenance_window
  multi_az_enabled           = var.multi_az_enabled
  node_type                  = var.node_type
  num_cache_clusters         = var.num_cache_clusters
  parameter_group_name       = var.parameter_group_name
  port                       = var.port
  replication_group_id       = var.replication_group_id
  security_group_ids         = var.security_group_ids
  security_group_names       = var.security_group_names
  snapshot_retention_limit   = var.snapshot_retention_limit
  snapshot_window            = var.snapshot_window
  subnet_group_name          = aws_elasticache_subnet_group.this.name
  tags                       = merge(var.tags, { "Name" = var.replication_group_id })
}
