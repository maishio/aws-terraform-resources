# Amazon API Gateway REST API

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_rest_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_rest_api) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the REST API. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the REST API. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_types"></a> [types](#input\_types) | List of endpoint types. | `list(string)` | `"EDGE"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_rest_api"></a> [api\_gateway\_rest\_api](#output\_api\_gateway\_rest\_api) | n/a |
