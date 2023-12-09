# --------------------------------------------------------------------------------
# AWS Config Configuration Recorder
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder
# --------------------------------------------------------------------------------

output "config_configuration_recorder" {
  value = aws_config_configuration_recorder.this
}

# --------------------------------------------------------------------------------
# AWS Config Delivery Channel
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_delivery_channel
# --------------------------------------------------------------------------------

output "config_delivery_channel" {
  value = aws_config_delivery_channel.this
}

# --------------------------------------------------------------------------------
# AWS Config Configuration Recorder Status
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder_status
# --------------------------------------------------------------------------------

output "config_configuration_recorder_status" {
  value = aws_config_configuration_recorder_status.this
}
