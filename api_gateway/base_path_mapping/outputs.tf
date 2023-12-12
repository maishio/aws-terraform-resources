# --------------------------------------------------------------------------------
# Amazon API Gateway Base Path Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping
# --------------------------------------------------------------------------------

output "api_gateway_base_path_mapping" {
  value = aws_api_gateway_base_path_mapping.this
}
