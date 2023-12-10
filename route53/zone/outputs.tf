# --------------------------------------------------------------------------------
# Amazon Route53 Hosted Zone
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone
# --------------------------------------------------------------------------------

output "route53_zone" {
  value = aws_route53_zone.this
}
