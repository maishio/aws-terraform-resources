# --------------------------------------------------------------------------------
# AWS Secrets Manager Secret Version
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret
# --------------------------------------------------------------------------------

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.this
}
