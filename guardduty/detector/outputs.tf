# --------------------------------------------------------------------------------
# Amazon GuardDuty Detector
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector
# --------------------------------------------------------------------------------

output "guardduty_detector" {
  value = aws_guardduty_detector.this
}
