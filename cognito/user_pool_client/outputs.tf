# --------------------------------------------------------------------------------
# Amazon Cognito User Pool Client
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client
# --------------------------------------------------------------------------------

output "cognito_user_pool_client" {
  value = aws_cognito_user_pool_client.this
}
