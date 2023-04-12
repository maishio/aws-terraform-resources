# Amazon Route53 Hosted Zone
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone

resource "aws_route53_zone" "this" {
  comment           = var.comment
  force_destroy     = var.force_destroy
  delegation_set_id = var.delegation_set_id
  name              = var.name

  dynamic "vpc" {
    for_each = var.vpcs
    content {
      vpc_id = vpc.value
    }
  }
  tags = var.tags
}
