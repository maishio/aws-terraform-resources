# --------------------------------------------------------------------------------
# Amazon API Gateway Method Settings
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings
# --------------------------------------------------------------------------------

resource "aws_api_gateway_method_settings" "this" {
  method_path = var.method_path
  rest_api_id = var.rest_api_id
  stage_name  = var.stage_name

  settings {
    cache_data_encrypted                       = var.cache_data_encrypted
    cache_ttl_in_seconds                       = var.cache_ttl_in_seconds
    caching_enabled                            = var.caching_enabled
    data_trace_enabled                         = var.data_trace_enabled
    logging_level                              = var.logging_level
    metrics_enabled                            = var.metrics_enabled
    require_authorization_for_cache_control    = var.require_authorization_for_cache_control
    throttling_burst_limit                     = var.throttling_burst_limit
    throttling_rate_limit                      = var.throttling_rate_limit
    unauthorized_cache_control_header_strategy = var.unauthorized_cache_control_header_strategy
  }
}
