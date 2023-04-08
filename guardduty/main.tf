# Amazon GuradDuty Detector
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector

resource "aws_guardduty_detector" "this" {
  enable                       = var.enable
  finding_publishing_frequency = var.finding_publishing_frequency
  tags                         = var.tags
}
