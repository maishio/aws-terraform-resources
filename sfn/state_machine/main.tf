# --------------------------------------------------------------------------------
# AWS Step Functions State Machine
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine
# --------------------------------------------------------------------------------

resource "aws_sfn_state_machine" "this" {
  definition = templatefile(var.path, var.vars)
  name       = var.name
  role_arn   = var.role_arn
  tags       = merge(var.tags, { "Name" = var.name })
  type       = var.type

  logging_configuration {
    log_destination        = var.log_destination
    include_execution_data = var.include_execution_data
    level                  = var.level
  }
}
