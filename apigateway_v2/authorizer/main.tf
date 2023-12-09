# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Authorizer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_authorizer
# --------------------------------------------------------------------------------

resource "aws_apigatewayv2_authorizer" "this" {
  api_id                            = var.api_id
  authorizer_payload_format_version = var.authorizer_payload_format_version
  authorizer_result_ttl_in_seconds  = var.authorizer_result_ttl_in_seconds
  authorizer_type                   = var.authorizer_type
  authorizer_uri                    = var.authorizer_uri
  enable_simple_responses           = var.enable_simple_responses
  identity_sources                  = var.identity_sources
  name                              = var.name

  dynamic "jwt_configuration" {
    for_each = var.jwt_configuration
    content {
      audience = jwt_configuration.value.audience
      issuer   = jwt_configuration.value.issuer
    }
  }
}
