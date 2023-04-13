# AWS Config Configuration Recorder
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder

resource "aws_config_configuration_recorder" "this" {
  name     = var.recorder_name
  role_arn = var.role_arn

  recording_group {
    all_supported                 = var.all_supported
    include_global_resource_types = var.include_global_resource_types
    resource_types                = var.resource_types
  }
}

# AWS Config Delivery Channel
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_delivery_channel

resource "aws_config_delivery_channel" "this" {
  name           = var.channel_name
  s3_bucket_name = var.s3_bucket_name
  s3_key_prefix  = var.s3_key_prefix
  depends_on     = [aws_config_configuration_recorder.this]
}

# AWS Config Configuration Recorder Status
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder_status

resource "aws_config_configuration_recorder_status" "this" {
  name       = aws_config_configuration_recorder.this.name
  is_enabled = var.is_enabled
  depends_on = [aws_config_delivery_channel.this]
}
