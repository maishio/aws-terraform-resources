# Amazon API Gateway V2 Stage
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_stage

resource "aws_apigatewayv2_stage" "this" {
  api_id          = var.api_id
  auto_deploy     = var.auto_deploy
  deployment_id   = var.deployment_id
  name            = var.name
  stage_variables = var.stage_variables
  tags            = merge(var.tags, { "Name" = var.name })

  default_route_settings {
    data_trace_enabled       = var.data_trace_enabled
    detailed_metrics_enabled = var.detailed_metrics_enabled
    throttling_burst_limit   = var.throttling_burst_limit
    throttling_rate_limit    = var.throttling_rate_limit
  }

  dynamic "access_log_settings" {
    for_each = var.access_log_settings
    content {
      destination_arn = access_log_settings.value.destination_arn
      format          = access_log_settings.value.format
    }
  }

  lifecycle {
    ignore_changes = [
      deployment_id
    ]
  }
}
