# --------------------------------------------------------------------------------
# AWS Batch Job Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_queue
# --------------------------------------------------------------------------------

resource "aws_batch_job_queue" "this" {
  compute_environments = var.compute_environments
  name                 = var.name
  priority             = var.priority
  state                = var.state
  tags                 = merge(var.tags, { "Name" = var.name })
}
