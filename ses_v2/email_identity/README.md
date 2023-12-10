# Amazon SESv2 (Simple Email V2) Email Identity

## Resources

| Name | Type |
|------|------|
| [aws_sesv2_email_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_email_identity) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_configuration_set_name"></a> [configuration\_set\_name](#input\_configuration\_set\_name) | Configuration set to use by default when sending from this identity. | `string` | `null` | no |
| <a name="input_email_identity"></a> [email\_identity](#input\_email\_identity) | Email address or domain to verify. | `string` | n/a | yes |
| <a name="input_next_signing_key_length"></a> [next\_signing\_key\_length](#input\_next\_signing\_key\_length) | Key length of the future DKIM key pair to be generated. | `string` | `"RSA_2048_BIT"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sesv2_email_identity"></a> [sesv2\_email\_identity](#output\_sesv2\_email\_identity) | n/a |
