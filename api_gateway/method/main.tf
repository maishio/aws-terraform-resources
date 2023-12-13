# --------------------------------------------------------------------------------
# Amazon API Gateway Method
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method
# --------------------------------------------------------------------------------

resource "aws_api_gateway_method" "this" {
  api_key_required     = var.api_key_required
  authorization        = var.authorization
  authorization_scopes = var.authorization_scopes
  http_method          = var.http_method
  request_models       = var.request_models
  request_parameters   = var.request_parameters
  resource_id          = var.resource_id
  rest_api_id          = var.rest_api_id
}
