# --------------------------------------------------------------------------------
# Amazon API Gateway Method
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method
# --------------------------------------------------------------------------------

output "api_gateway_method" {
  value = aws_api_gateway_method.this
}
