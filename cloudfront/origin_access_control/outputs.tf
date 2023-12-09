# --------------------------------------------------------------------------------
# Amazon CloudFront Origin Access Control
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_control
# --------------------------------------------------------------------------------

output "cloudfront_origin_access_control" {
  value = aws_cloudfront_origin_access_control.this
}
