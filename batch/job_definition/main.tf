# --------------------------------------------------------------------------------
# AWS Batch Job Definition
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_definition
# --------------------------------------------------------------------------------

resource "aws_batch_job_definition" "this" {
  container_properties  = templatefile(var.path, var.vars)
  name                  = var.name
  parameters            = var.parameters
  platform_capabilities = var.platform_capabilities
  propagate_tags        = var.propagate_tags
  tags                  = merge(var.tags, { "Name" = var.name })
  type                  = var.type
}
