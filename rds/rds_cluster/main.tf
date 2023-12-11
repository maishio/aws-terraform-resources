# --------------------------------------------------------------------------------
# Amazon RDS Cluster
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster
# --------------------------------------------------------------------------------

resource "aws_rds_cluster" "this" {
  allow_major_version_upgrade         = var.allow_major_version_upgrade
  apply_immediately                   = var.apply_immediately
  availability_zones                  = var.availability_zones
  backtrack_window                    = var.backtrack_window
  backup_retention_period             = var.backup_retention_period
  cluster_identifier                  = var.cluster_identifier
  copy_tags_to_snapshot               = var.copy_tags_to_snapshot
  database_name                       = var.database_name
  db_cluster_parameter_group_name     = var.db_cluster_parameter_group_name
  db_subnet_group_name                = var.db_subnet_group_name
  deletion_protection                 = var.deletion_protection
  enable_http_endpoint                = var.enable_http_endpoint
  enabled_cloudwatch_logs_exports     = var.enabled_cloudwatch_logs_exports
  engine                              = var.engine
  engine_mode                         = var.engine_mode
  engine_version                      = var.engine_version
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  iam_roles                           = var.iam_roles
  kms_key_id                          = var.kms_key_id
  master_password                     = var.master_password
  master_username                     = var.master_username
  port                                = var.port
  preferred_backup_window             = var.preferred_backup_window
  preferred_maintenance_window        = var.preferred_maintenance_window
  skip_final_snapshot                 = var.skip_final_snapshot
  storage_encrypted                   = var.storage_encrypted
  tags                                = merge(var.tags, { "Name" = var.cluster_identifier })
  vpc_security_group_ids              = var.vpc_security_group_ids

  lifecycle {
    ignore_changes = [
      availability_zones,
      engine_version
    ]
  }
}
