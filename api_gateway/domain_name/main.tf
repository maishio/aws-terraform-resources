# --------------------------------------------------------------------------------
# Amazon API Gateway Domain Name
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name
# --------------------------------------------------------------------------------

resource "aws_api_gateway_domain_name" "this" {
  certificate_arn = var.certificate_arn
  domain_name     = var.domain_name
  security_policy = var.security_policy
  tags            = var.tags

  endpoint_configuration {
    types = [var.types]
  }
}
