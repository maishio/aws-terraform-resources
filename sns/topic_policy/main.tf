# --------------------------------------------------------------------------------
# Amazon SNS Topic Policy
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy
# --------------------------------------------------------------------------------

resource "aws_sns_topic_policy" "this" {
  arn    = var.arn
  policy = templatefile(var.path, var.vars)
}
