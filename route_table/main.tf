# --------------------------------------------------------------------------------
# Current Availability Zones data source
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones
# --------------------------------------------------------------------------------

data "aws_availability_zones" "this" {
  state = "available"
}

# --------------------------------------------------------------------------------
# Amazon VPC Route Table resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table
# --------------------------------------------------------------------------------

resource "aws_route_table" "this" {
  count = length(var.subnet_ids)
  dynamic "route" {
    for_each = var.route
    content {
      cidr_block                = route.value.cidr_block
      gateway_id                = lookup(route.value, "gateway_id", null)
      instance_id               = lookup(route.value, "instance_id", null)
      nat_gateway_id            = var.nat_gateway_ids != [] ? var.nat_gateway_ids[count.index] : null
      network_interface_id      = lookup(route.value, "network_interface_id", null)
      transit_gateway_id        = lookup(route.value, "transit_gateway_id", null)
      vpc_peering_connection_id = lookup(route.value, "vpc_peering_connection_id", null)
    }
  }
  tags   = merge(var.tags, { Name = "${var.tags.service}-${var.tags.env}-${var.subnet}-${data.aws_availability_zones.this.names[count.index]}" })
  vpc_id = var.vpc_id
}

# --------------------------------------------------------------------------------
# Amazon VPC Route Table_association resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association
# --------------------------------------------------------------------------------

resource "aws_route_table_association" "this" {
  count          = length(var.subnet_ids)
  subnet_id      = var.subnet_ids[count.index]
  route_table_id = aws_route_table.this[count.index].id
}
