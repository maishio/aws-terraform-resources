# --------------------------------------------------------------------------------
# Amazon EventBridge Rules resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule
# --------------------------------------------------------------------------------

resource "aws_cloudwatch_event_rule" "this" {
  description         = var.description
  is_enabled          = var.is_enabled
  name                = var.name
  schedule_expression = var.schedule_expression
  tags                = merge(var.tags, { "Name" = var.name })
}

# --------------------------------------------------------------------------------
# Amazon EventBridge Target resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target
# --------------------------------------------------------------------------------

resource "aws_cloudwatch_event_target" "this" {
  arn       = var.arn
  rule      = aws_cloudwatch_event_rule.this.name
  target_id = var.target_id
}