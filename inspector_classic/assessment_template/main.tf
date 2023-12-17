# --------------------------------------------------------------------------------
# Amazon Inspector Classic Assessment Template
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_template
# --------------------------------------------------------------------------------

resource "aws_inspector_assessment_template" "this" {
  duration           = var.duration
  name               = var.name
  rules_package_arns = var.rules_package_arns
  tags               = merge(var.tags, { "Name" = var.name })
  target_arn         = var.target_arn
}
