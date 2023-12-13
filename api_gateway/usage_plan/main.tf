# --------------------------------------------------------------------------------
# Amazon API Gateway Usage Plan
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan
# --------------------------------------------------------------------------------

resource "aws_api_gateway_usage_plan" "this" {
  description = var.description
  name        = var.name
  tags        = merge(var.tags, { "Name" = var.name })

  api_stages {
    api_id = var.api_id
    stage  = var.stage
  }

  quota_settings {
    limit  = var.limit
    offset = var.offset
    period = var.period
  }

  throttle_settings {
    burst_limit = var.burst_limit
    rate_limit  = var.rate_limit
  }
}
