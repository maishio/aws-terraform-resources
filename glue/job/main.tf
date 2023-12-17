# --------------------------------------------------------------------------------
# AWS Glue Job
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job
# --------------------------------------------------------------------------------

resource "aws_glue_job" "this" {
  connections               = var.connections
  default_arguments         = var.default_arguments
  execution_class           = var.execution_class
  glue_version              = var.glue_version
  max_capacity              = var.max_capacity
  max_retries               = var.max_retries
  name                      = var.name
  non_overridable_arguments = var.non_overridable_arguments
  number_of_workers         = var.number_of_workers
  role_arn                  = var.role_arn
  tags                      = merge(var.tags, { "Name" = var.name })
  timeout                   = var.timeout
  worker_type               = var.worker_type

  command {
    name            = var.command_name
    python_version  = var.python_version
    script_location = var.script_location
  }

  execution_property {
    max_concurrent_runs = var.max_concurrent_runs
  }
}
