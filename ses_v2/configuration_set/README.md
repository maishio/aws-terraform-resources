# Amazon SESv2 (Simple Email V2) Configuration Set

## Resources

| Name | Type |
|------|------|
| [aws_sesv2_configuration_set.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_configuration_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_configuration_set_name"></a> [configuration\_set\_name](#input\_configuration\_set\_name) | Name of the configuration set. | `string` | n/a | yes |
| <a name="input_reputation_metrics_enabled"></a> [reputation\_metrics\_enabled](#input\_reputation\_metrics\_enabled) | If `true`, tracking of reputation metrics is enabled for the configuration set. If `false`, tracking of reputation metrics is disabled for the configuration set. | `bool` | `false` | no |
| <a name="input_sending_enabled"></a> [sending\_enabled](#input\_sending\_enabled) | If `true`, email sending is enabled for the configuration set. If `false`, email sending is disabled for the configuration set. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sesv2_configuration_set"></a> [sesv2\_configuration\_set](#output\_sesv2\_configuration\_set) | Amazon SESv2 (Simple Email V2) Configuration Set resource. |
