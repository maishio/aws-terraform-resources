# --------------------------------------------------------------------------------
# Amazon SNS Topic Subscription
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription
# --------------------------------------------------------------------------------

resource "aws_sns_topic_subscription" "this" {
  endpoint              = var.endpoint
  protocol              = var.protocol
  subscription_role_arn = var.subscription_role_arn
  topic_arn             = var.topic_arn
}
