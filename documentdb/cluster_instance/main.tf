# --------------------------------------------------------------------------------
# Amazon DocumentDB Cluster Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance
# --------------------------------------------------------------------------------

resource "aws_docdb_cluster_instance" "this" {
  count                           = var.instances
  apply_immediately               = var.apply_immediately
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  availability_zone               = var.availability_zone
  cluster_identifier              = var.cluster_identifier
  enable_performance_insights     = var.enable_performance_insights
  engine                          = var.engine
  identifier                      = "${var.cluster_identifier}-${count.index}"
  instance_class                  = var.instance_class
  performance_insights_kms_key_id = var.performance_insights_kms_key_id
  preferred_maintenance_window    = var.preferred_maintenance_window
  promotion_tier                  = var.promotion_tier
  tags                            = merge(var.tags, { "Name" = "${var.cluster_identifier}-${count.index}" })
}
