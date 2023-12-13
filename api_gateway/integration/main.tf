# --------------------------------------------------------------------------------
# Amazon API Gateway Integration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration
# --------------------------------------------------------------------------------

resource "aws_api_gateway_integration" "this" {
  cache_key_parameters    = var.cache_key_parameters
  connection_id           = var.connection_id
  connection_type         = var.connection_type
  http_method             = var.http_method
  integration_http_method = var.integration_http_method
  passthrough_behavior    = var.passthrough_behavior
  request_parameters      = var.request_parameters
  request_templates       = var.request_templates
  resource_id             = var.resource_id
  rest_api_id             = var.rest_api_id
  timeout_milliseconds    = var.timeout_milliseconds
  type                    = var.type
  uri                     = var.uri
}
