# --------------------------------------------------------------------------------
# Amazon RDS Event Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_event_subscription
# --------------------------------------------------------------------------------

resource "aws_db_event_subscription" "this" {
  name             = var.name
  sns_topic        = var.sns_topic
  source_type      = var.source_type
  source_ids       = var.source_ids
  event_categories = var.event_categories
  enabled          = var.enabled
  tags             = merge(var.tags, { "Name" = var.name })
}
