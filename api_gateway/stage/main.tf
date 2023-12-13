# --------------------------------------------------------------------------------
# Amazon API Gateway Stage
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage
# --------------------------------------------------------------------------------

resource "aws_api_gateway_stage" "this" {
  deployment_id        = var.deployment_id
  description          = var.description
  rest_api_id          = var.rest_api_id
  stage_name           = var.stage_name
  tags                 = merge(var.tags, { "Name" = var.stage_name })
  variables            = var.variables
  xray_tracing_enabled = var.xray_tracing_enabled

  dynamic "access_log_settings" {
    for_each = var.access_log_settings
    content {
      destination_arn = access_log_settings.value.destination_arn
      format          = access_log_settings.value.format
    }
  }
}
