# --------------------------------------------------------------------------------
# Amazon EFS Mount Target
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target
# --------------------------------------------------------------------------------

resource "aws_efs_mount_target" "this" {
  file_system_id  = var.file_system_id
  subnet_id       = var.subnet_id
  security_groups = var.security_groups
}
