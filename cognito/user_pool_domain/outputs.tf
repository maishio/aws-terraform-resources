# --------------------------------------------------------------------------------
# Amazon Cognito User Pool Domain
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_domain
# --------------------------------------------------------------------------------

output "cognito_user_pool_domain" {
  value = aws_cognito_user_pool_domain.this
}
