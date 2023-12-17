# --------------------------------------------------------------------------------
# AWS IAM Access Analyzer Analyzer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/accessanalyzer_analyzer
# --------------------------------------------------------------------------------

resource "aws_accessanalyzer_analyzer" "this" {
  analyzer_name = var.analyzer_name
  tags          = merge(var.tags, { "Name" = var.analyzer_name })
  type          = var.type
}
