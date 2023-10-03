# Amazon SESv2 (Simple Email V2) Configuration Set
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_configuration_set

resource "aws_sesv2_configuration_set" "this" {
  configuration_set_name = var.configuration_set_name
  tags                   = merge(var.tags, { "Name" = var.configuration_set_name })

  reputation_options {
    reputation_metrics_enabled = var.reputation_metrics_enabled
  }

  sending_options {
    sending_enabled = var.sending_enabled
  }
}
