# --------------------------------------------------------------------------------
# AWS CloudTrail
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudtrail
# --------------------------------------------------------------------------------

output "cloudtrail" {
  value = aws_cloudtrail.this
}
