# --------------------------------------------------------------------------------
# Amazon API Gateway V2 Domain Name
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_domain_name
# --------------------------------------------------------------------------------

resource "aws_apigatewayv2_domain_name" "this" {
  domain_name = var.domain_name
  tags        = merge(var.tags, { "Name" = var.domain_name })

  domain_name_configuration {
    certificate_arn = var.certificate_arn
    endpoint_type   = var.endpoint_type
    security_policy = var.security_policy
  }
}
