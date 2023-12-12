# --------------------------------------------------------------------------------
# Amazon API Gateway Base Path Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping
# --------------------------------------------------------------------------------

resource "aws_api_gateway_base_path_mapping" "this" {
  api_id      = var.api_id
  base_path   = var.base_path
  stage_name  = var.stage_name
  domain_name = var.domain_name
}
