# --------------------------------------------------------------------------------
# Amazon API Gateway Resource
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource
# --------------------------------------------------------------------------------

output "api_gateway_resource" {
  value = aws_api_gateway_resource.this
}
