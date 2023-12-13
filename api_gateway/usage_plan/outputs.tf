# --------------------------------------------------------------------------------
# Amazon API Gateway Usage Plan
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan
# --------------------------------------------------------------------------------

output "api_gateway_usage_plan" {
  value = aws_api_gateway_usage_plan.this
}
