# --------------------------------------------------------------------------------
# AWS IAM Access Analyzer Analyzer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/accessanalyzer_analyzer
# --------------------------------------------------------------------------------

output "accessanalyzer_analyzer" {
  value = aws_accessanalyzer_analyzer.this
}
