# --------------------------------------------------------------------------------
# Amazon RDS Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance
# --------------------------------------------------------------------------------

resource "aws_db_instance" "this" {
  allocated_storage                     = var.allocated_storage
  allow_major_version_upgrade           = var.allow_major_version_upgrade
  apply_immediately                     = var.apply_immediately
  auto_minor_version_upgrade            = var.auto_minor_version_upgrade
  backup_retention_period               = var.backup_retention_period
  backup_window                         = var.backup_window
  ca_cert_identifier                    = var.ca_cert_identifier
  copy_tags_to_snapshot                 = var.copy_tags_to_snapshot
  db_name                               = var.db_name
  db_subnet_group_name                  = var.db_subnet_group_name
  deletion_protection                   = var.deletion_protection
  enabled_cloudwatch_logs_exports       = var.enabled_cloudwatch_logs_exports
  engine                                = var.engine
  engine_version                        = var.engine_version
  final_snapshot_identifier             = var.final_snapshot_identifier
  iam_database_authentication_enabled   = var.iam_database_authentication_enabled
  identifier                            = var.identifier
  iops                                  = var.iops
  kms_key_id                            = var.kms_key_arn
  license_model                         = var.license_model
  maintenance_window                    = var.maintenance_window
  max_allocated_storage                 = var.max_allocated_storage
  monitoring_interval                   = var.monitoring_interval
  multi_az                              = var.multi_az
  option_group_name                     = var.option_group_name
  parameter_group_name                  = var.parameter_group_name
  password                              = var.password
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_kms_key_id       = var.performance_insights_kms_key_id
  performance_insights_retention_period = var.performance_insights_retention_period
  port                                  = var.port
  publicly_accessible                   = var.publicly_accessible
  skip_final_snapshot                   = var.skip_final_snapshot
  snapshot_identifier                   = var.snapshot_identifier
  storage_encrypted                     = var.storage_encrypted
  storage_type                          = var.storage_type
  tags                                  = merge(var.tags, { "Name" = var.identifier })
  username                              = var.username
  vpc_security_group_ids                = var.vpc_security_group_ids
}
