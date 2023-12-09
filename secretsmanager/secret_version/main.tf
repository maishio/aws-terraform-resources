# --------------------------------------------------------------------------------
# AWS Secrets Manager Secret Version
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version
# --------------------------------------------------------------------------------

resource "aws_secretsmanager_secret_version" "this" {
  secret_id     = var.secret_id
  secret_string = var.secret_string
}
