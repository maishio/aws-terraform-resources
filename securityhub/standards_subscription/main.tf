# --------------------------------------------------------------------------------
# AWS Security Hub Standards Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_standards_subscription
# --------------------------------------------------------------------------------

resource "aws_securityhub_standards_subscription" "this" {
  standards_arn = var.standards_arn
}
