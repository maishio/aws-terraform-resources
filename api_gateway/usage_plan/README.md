# Amazon API Gateway Usage Plan

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_usage_plan.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_usage_plan) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | API Id of the associated API stage in a usage plan. | `string` | n/a | yes |
| <a name="input_burst_limit"></a> [burst\_limit](#input\_burst\_limit) | The API request burst limit. | `number` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of a usage plan. | `string` | `null` | no |
| <a name="input_limit"></a> [limit](#input\_limit) | Maximum number of requests that can be made in a given time period. | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the usage plan. | `string` | n/a | yes |
| <a name="input_offset"></a> [offset](#input\_offset) | Number of requests subtracted from the given limit in the initial time period. | `number` | `0` | no |
| <a name="input_period"></a> [period](#input\_period) | Time period in which the limit applies. | `string` | `"DAY"` | no |
| <a name="input_rate_limit"></a> [rate\_limit](#input\_rate\_limit) | The API request steady-state rate limit. | `number` | `null` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | API stage name of the associated API stage in a usage plan. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_usage_plan"></a> [api\_gateway\_usage\_plan](#output\_api\_gateway\_usage\_plan) | n/a |
