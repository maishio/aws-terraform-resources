# Amazon API Gateway V2 Integration
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration

resource "aws_apigatewayv2_integration" "this" {
  api_id                 = var.api_id
  connection_type        = var.connection_type
  credentials_arn        = var.credentials_arn
  integration_subtype    = var.integration_subtype
  integration_method     = var.integration_method
  integration_type       = var.integration_type
  integration_uri        = var.integration_uri
  payload_format_version = var.payload_format_version
  request_parameters     = var.request_parameters
  request_templates      = var.request_templates
  timeout_milliseconds   = var.timeout_milliseconds
}
