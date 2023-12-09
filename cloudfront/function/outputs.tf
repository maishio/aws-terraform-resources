# Amazon CloudFront Function
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function

output "cloudfront_function" {
  value = aws_cloudfront_function.this
}
