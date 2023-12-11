# --------------------------------------------------------------------------------
# Amazon RDS Event Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_event_subscription
# --------------------------------------------------------------------------------

output "db_event_subscription" {
  value = aws_db_event_subscription.this
}
