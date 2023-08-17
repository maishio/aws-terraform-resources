# Amazon API Gateway V2 Route
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_route

resource "aws_apigatewayv2_route" "this" {
  api_id               = var.api_id
  api_key_required     = var.api_key_required
  authorization_scopes = var.authorization_scopes
  authorization_type   = var.authorization_type
  authorizer_id        = var.authorizer_id
  request_models       = var.request_models
  route_key            = var.route_key
  target               = var.target
}
