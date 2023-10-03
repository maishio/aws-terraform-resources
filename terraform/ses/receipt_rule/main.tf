# Amazon SES Receipt Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule

resource "aws_ses_receipt_rule" "this" {
  name          = var.name
  rule_set_name = var.rule_set_name
  recipients    = var.recipients
  enabled       = var.enabled
  scan_enabled  = var.scan_enabled

  dynamic "add_header_action" {
    for_each = var.add_header_action
    content {
      header_name  = add_header_action.value.header_name
      header_value = add_header_action.value.header_value
      position     = add_header_action.value.position
    }
  }

  dynamic "bounce_action" {
    for_each = var.bounce_action
    content {
      message         = bounce_action.value.message
      position        = bounce_action.value.position
      sender          = bounce_action.value.sender
      smtp_reply_code = bounce_action.value.smtp_reply_code
      status_code     = lookup(bounce_action.value, "status_code", null)
      topic_arn       = lookup(bounce_action.value, "topic_arn", null)
    }
  }

  dynamic "lambda_action" {
    for_each = var.lambda_action
    content {
      function_arn    = lambda_action.value.function_arn
      invocation_type = lookup(lambda_action.value, "invocation_type", null)
      topic_arn       = lookup(lambda_action.value, "topic_arn", null)
      position        = lambda_action.value.position
    }
  }

  dynamic "s3_action" {
    for_each = var.s3_action
    content {
      bucket_name       = s3_action.value.bucket_name
      kms_key_arn       = lookup(s3_action.value, "kms_key_arn", null)
      object_key_prefix = lookup(s3_action.value, "object_key_prefix", null)
      topic_arn         = lookup(s3_action.value, "topic_arn", null)
      position          = s3_action.value.position
    }
  }

  dynamic "sns_action" {
    for_each = var.sns_action
    content {
      encoding  = lookup(sns_action.value, "encoding", "UTF-8")
      position  = sns_action.value.position
      topic_arn = sns_action.value.topic_arn
    }
  }

  dynamic "stop_action" {
    for_each = var.stop_action
    content {
      position  = stop_action.value.position
      scope     = stop_action.value.scope
      topic_arn = lookup(stop_action.value, "topic_arn", null)
    }
  }

  dynamic "workmail_action" {
    for_each = var.workmail_action
    content {
      organization_arn = workmail_action.value.organization_arn
      position         = workmail_action.value.position
      topic_arn        = lookup(workmail_action.value, "topic_arn", null)
    }
  }
}
