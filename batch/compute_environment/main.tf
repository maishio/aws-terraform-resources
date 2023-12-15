# --------------------------------------------------------------------------------
# AWS Batch Compute Environment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_compute_environment
# --------------------------------------------------------------------------------

resource "aws_batch_compute_environment" "this" {
  compute_environment_name = var.compute_environment_name
  service_role             = var.service_role
  state                    = var.state
  tags                     = merge(var.tags, { "Name" = var.compute_environment_name })
  type                     = var.type

  compute_resources {
    allocation_strategy = var.allocation_strategy
    bid_percentage      = var.bid_percentage
    desired_vcpus       = var.desired_vcpus
    instance_role       = var.instance_role
    instance_type       = var.compute_resources_type == "EC2" ? var.instance_type : null
    max_vcpus           = var.max_vcpus
    min_vcpus           = var.min_vcpus
    security_group_ids  = var.security_group_ids
    subnets             = var.subnets
    tags                = merge(var.tags, var.compute_resources_tags)
    type                = var.compute_resources_type

    dynamic "ec2_configuration" {
      for_each = var.ec2_configuration
      content {
        image_id_override = lookup(ec2_configuration.value, "image_id_override", null)
        image_type        = ec2_configuration.value.image_type
      }
    }
  }

  lifecycle {
    ignore_changes = [
      compute_resources[0].desired_vcpus
    ]
  }
}
