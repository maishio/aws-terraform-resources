# --------------------------------------------------------------------------------
# Current Availability Zones data source
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones
# --------------------------------------------------------------------------------

data "aws_availability_zones" "this" {
  state = "available"
}

# --------------------------------------------------------------------------------
# Amazon VPC Subnet resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet
# --------------------------------------------------------------------------------

resource "aws_subnet" "this" {
  count                   = length(var.cidr_blocks)
  availability_zone       = data.aws_availability_zones.this.names[count.index]
  cidr_block              = element(var.cidr_blocks, count.index)
  map_public_ip_on_launch = var.map_public_ip_on_launch
  vpc_id                  = var.vpc_id
  tags                    = merge(var.tags, { Name = "${var.tags.service}-${var.tags.env}-${var.subnet}-${data.aws_availability_zones.this.names[count.index]}" })
}
