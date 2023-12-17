# --------------------------------------------------------------------------------
# Amazon Inspector Classic Assessment Template
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_template
# --------------------------------------------------------------------------------

output "inspector_assessment_template" {
  value = aws_inspector_assessment_template.this
}
