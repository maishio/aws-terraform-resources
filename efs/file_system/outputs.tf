# --------------------------------------------------------------------------------
# Amazon EFS File System
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system
# --------------------------------------------------------------------------------

output "efs_file_system" {
  value = aws_efs_file_system.this
}
