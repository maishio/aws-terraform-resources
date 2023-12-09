# --------------------------------------------------------------------------------
# Amazon VPC Endpoint
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint
# --------------------------------------------------------------------------------

resource "aws_vpc_endpoint" "this" {
  policy              = var.path != null ? templatefile(var.path, var.vars) : null
  private_dns_enabled = var.vpc_endpoint_type == "Interface" ? var.private_dns_enabled : null
  route_table_ids     = var.vpc_endpoint_type == "Gateway" ? var.route_table_ids : null
  security_group_ids  = var.vpc_endpoint_type == "Interface" ? var.security_group_ids : null
  service_name        = var.service_name
  subnet_ids          = var.vpc_endpoint_type == "Interface" ? var.subnet_ids : null
  tags                = merge(var.tags, { "Name" = var.endpoint_name })
  vpc_endpoint_type   = var.vpc_endpoint_type
  vpc_id              = var.vpc_id
}
