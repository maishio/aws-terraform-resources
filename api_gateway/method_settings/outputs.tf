# --------------------------------------------------------------------------------
# Amazon API Gateway Method Settings
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings
# --------------------------------------------------------------------------------

output "api_gateway_method_settings" {
  value = aws_api_gateway_method_settings.this
}
