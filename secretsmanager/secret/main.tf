# --------------------------------------------------------------------------------
# AWS Secrets Manager Secret
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret
# --------------------------------------------------------------------------------

resource "aws_secretsmanager_secret" "this" {
  description                    = var.description
  force_overwrite_replica_secret = var.force_overwrite_replica_secret
  name                           = var.name
  recovery_window_in_days        = var.recovery_window_in_days
  tags                           = merge(var.tags, { "Name" = var.name })
}
