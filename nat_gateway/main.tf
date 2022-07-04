# --------------------------------------------------------------------------------
# Current Availability Zones data source
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones
# --------------------------------------------------------------------------------

data "aws_availability_zones" "this" {
  state = "available"
}

# --------------------------------------------------------------------------------
# Amazon VPC Elastic IP resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip
# --------------------------------------------------------------------------------

resource "aws_eip" "this" {
  count = length(var.subnet_ids)
  tags  = merge(var.tags, { "Name" = "${var.tags.service}-${var.tags.env}-ngw-${data.aws_availability_zones.this.names[count.index]}" })
}

# --------------------------------------------------------------------------------
# Amazon VPC Nat Gateway resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway
# --------------------------------------------------------------------------------

resource "aws_nat_gateway" "this" {
  count         = length(var.subnet_ids)
  allocation_id = aws_eip.this[count.index].id
  subnet_id     = var.subnet_ids[count.index]
  tags          = merge(var.tags, { "Name" = "${var.tags.service}-${var.tags.env}-ngw-${data.aws_availability_zones.this.names[count.index]}" })
}
