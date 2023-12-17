# --------------------------------------------------------------------------------
# AWS Glue Connection
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_connection
# --------------------------------------------------------------------------------

resource "aws_glue_connection" "this" {
  catalog_id            = var.catalog_id
  connection_properties = var.connection_properties
  connection_type       = var.connection_type
  description           = var.description
  match_criteria        = var.match_criteria
  name                  = var.name
  tags                  = merge(var.tags, { "Name" = var.name })

  dynamic "physical_connection_requirements" {
    for_each = var.physical_connection_requirements
    content {
      availability_zone      = lookup(physical_connection_requirements.value, "availability_zone", null)
      security_group_id_list = lookup(physical_connection_requirements.value, "security_group_id_list", null)
      subnet_id              = lookup(physical_connection_requirements.value, "subnet_id", null)
    }
  }
}
