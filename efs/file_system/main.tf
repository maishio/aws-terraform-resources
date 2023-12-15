# --------------------------------------------------------------------------------
# Amazon EFS File System
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_file_system
# --------------------------------------------------------------------------------

resource "aws_efs_file_system" "this" {
  creation_token                  = var.creation_token
  encrypted                       = var.encrypted
  performance_mode                = var.performance_mode
  provisioned_throughput_in_mibps = var.provisioned_throughput_in_mibps
  tags                            = merge(var.tags, { "Name" = var.name })
  throughput_mode                 = var.throughput_mode

  dynamic "lifecycle_policy" {
    for_each = var.lifecycle_policy
    content {
      transition_to_ia                    = lookup(lifecycle_policy.value, "transition_to_ia", null)
      transition_to_primary_storage_class = lookup(lifecycle_policy.value, "transition_to_primary_storage_class", null)
    }
  }
}
