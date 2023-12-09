# --------------------------------------------------------------------------------
# Amazon CloudFront Function
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function
# --------------------------------------------------------------------------------

resource "aws_cloudfront_function" "this" {
  code    = templatefile(var.path, var.vars)
  comment = var.comment
  name    = var.name
  publish = var.publish
  runtime = var.runtime
}
