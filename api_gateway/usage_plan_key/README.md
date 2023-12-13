# Amazon API Gateway Usage Plan Key

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_usage_plan_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_ids"></a> [key\_ids](#input\_key\_ids) | Identifier of the API key resource. | `string` | n/a | yes |
| <a name="input_key_type"></a> [key\_type](#input\_key\_type) | Type of the API key resource. | `string` | `"API_KEY"` | no |
| <a name="input_usage_plan_id"></a> [usage\_plan\_id](#input\_usage\_plan\_id) | Id of the usage plan resource representing to associate the key to. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_usage_plan_key"></a> [api\_gateway\_usage\_plan\_key](#output\_api\_gateway\_usage\_plan\_key) | n/a |
