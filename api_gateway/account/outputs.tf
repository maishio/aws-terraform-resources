# --------------------------------------------------------------------------------
# Amazon API Gateway Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_account
# --------------------------------------------------------------------------------

output "api_gateway_account" {
  value = aws_api_gateway_account.this
}
