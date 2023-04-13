# Amazon EC2 Elastic IP
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource "aws_eip" "this" {
  tags = merge(var.tags, { "Name" = var.name })
  vpc  = var.vpc
}
