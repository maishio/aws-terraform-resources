# --------------------------------------------------------------------------------
# Amazon Cognito User Pool output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool
# --------------------------------------------------------------------------------

output "cognito_user_pool" {
  value = aws_cognito_user_pool.this
}

# --------------------------------------------------------------------------------
# Amazon Cognito User Pool Client output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_client
# --------------------------------------------------------------------------------

output "cognito_user_pool_client" {
  value = aws_cognito_user_pool_client.this
}

# --------------------------------------------------------------------------------
# Amazon Cognito User Pool Domain output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cognito_user_pool_domain
# --------------------------------------------------------------------------------

output "cognito_user_pool_domain" {
  value = aws_cognito_user_pool_domain.this
}
