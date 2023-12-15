# --------------------------------------------------------------------------------
# Amazon EFS Access Point
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point
# --------------------------------------------------------------------------------

resource "aws_efs_access_point" "this" {
  file_system_id = var.file_system_id
  tags           = merge(var.tags, { "Name" = var.name })

  posix_user {
    gid            = var.gid
    secondary_gids = var.secondary_gids
    uid            = var.uid
  }

  root_directory {
    path = var.path
    creation_info {
      owner_gid   = var.owner_gid
      owner_uid   = var.owner_uid
      permissions = var.permissions
    }
  }
}
