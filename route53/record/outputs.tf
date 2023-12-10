# --------------------------------------------------------------------------------
# Amazon Route53 Record
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
# --------------------------------------------------------------------------------

output "route53_record" {
  value = aws_route53_record.this
}
