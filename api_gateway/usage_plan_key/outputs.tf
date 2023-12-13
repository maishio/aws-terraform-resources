# --------------------------------------------------------------------------------
# Amazon API Gateway Usage Plan Key
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key
# --------------------------------------------------------------------------------

output "api_gateway_usage_plan_key" {
  value = aws_api_gateway_usage_plan_key.this
}
