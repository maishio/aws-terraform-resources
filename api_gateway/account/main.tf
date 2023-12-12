# --------------------------------------------------------------------------------
# Amazon API Gateway Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_account
# --------------------------------------------------------------------------------

resource "aws_api_gateway_account" "this" {
  cloudwatch_role_arn = var.cloudwatch_role_arn
}
