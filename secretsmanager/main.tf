# AWS Secrets Manager secret
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret

resource "aws_secretsmanager_secret" "this" {
  description                    = var.description
  force_overwrite_replica_secret = var.force_overwrite_replica_secret
  name                           = var.name
  recovery_window_in_days        = var.recovery_window_in_days
  tags                           = merge(var.tags, { "Name" = var.name })
}

# AWS Secrets Manager secret version
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = aws_secretsmanager_secret.this.id
  secret_string = var.secret_string
}
