# Amazon API Gateway Domain Name

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_domain_name.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_domain_name) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | ARN for an AWS-managed certificate. | `string` | `null` | no |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Fully-qualified domain name to register. | `string` | n/a | yes |
| <a name="input_security_policy"></a> [security\_policy](#input\_security\_policy) | Transport Layer Security (TLS) version + cipher suite for this DomainName. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_types"></a> [types](#input\_types) | List of endpoint types. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_domain_name"></a> [api\_gateway\_domain\_name](#output\_api\_gateway\_domain\_name) | n/a |
