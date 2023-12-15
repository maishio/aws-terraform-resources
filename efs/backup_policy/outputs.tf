# --------------------------------------------------------------------------------
# Amazon EFS Backup Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_backup_policy
# --------------------------------------------------------------------------------

output "efs_backup_policy" {
  value = aws_efs_backup_policy.this
}
