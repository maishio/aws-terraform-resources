# --------------------------------------------------------------------------------
# Amazon EFS Mount Target
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target
# --------------------------------------------------------------------------------

output "efs_mount_target" {
  value = aws_efs_mount_target.this
}
