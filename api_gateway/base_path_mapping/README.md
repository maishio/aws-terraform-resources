# Amazon API Gateway Base Path Mapping

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_base_path_mapping.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_base_path_mapping) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | ID of the API to connect. | `string` | n/a | yes |
| <a name="input_base_path"></a> [base\_path](#input\_base\_path) | Path segment that must be prepended to the path when accessing the API via this mapping. | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Already-registered domain name to connect the API to. | `string` | n/a | yes |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | Name of a specific deployment stage to expose at the given path. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_base_path_mapping"></a> [api\_gateway\_base\_path\_mapping](#output\_api\_gateway\_base\_path\_mapping) | n/a |
