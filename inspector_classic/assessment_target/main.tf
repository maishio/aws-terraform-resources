# --------------------------------------------------------------------------------
# Amazon Inspector Classic Assessment Target
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_target
# --------------------------------------------------------------------------------

resource "aws_inspector_assessment_target" "this" {
  name               = var.name
  resource_group_arn = var.resource_group_arn
}
