# Amazon API Gateway API Key

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_api_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_api_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | API key description. | `string` | `"Managed by Terraform"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Whether the API key can be used by callers. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the API key. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_value"></a> [value](#input\_value) | Value of the API key. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_api_key"></a> [api\_gateway\_api\_key](#output\_api\_gateway\_api\_key) | n/a |
