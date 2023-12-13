# --------------------------------------------------------------------------------
# Amazon API Gateway Integration Response
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration_response
# --------------------------------------------------------------------------------

resource "aws_api_gateway_integration_response" "this" {
  http_method         = var.http_method
  resource_id         = var.resource_id
  response_parameters = var.response_parameters
  response_templates  = var.response_templates
  rest_api_id         = var.rest_api_id
  status_code         = var.status_code
}
