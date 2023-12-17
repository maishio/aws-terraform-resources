# --------------------------------------------------------------------------------
# Amazon Inspector Classic Assessment Target
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_target
# --------------------------------------------------------------------------------

output "inspector_assessment_target" {
  value = aws_inspector_assessment_target.this
}
