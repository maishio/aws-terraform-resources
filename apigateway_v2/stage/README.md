# Amazon API Gateway V2 Stage

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_stage) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_log_settings"></a> [access\_log\_settings](#input\_access\_log\_settings) | Settings for logging access in this stage. | `list(any)` | `[]` | no |
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | API identifier. | `string` | n/a | yes |
| <a name="input_auto_deploy"></a> [auto\_deploy](#input\_auto\_deploy) | Whether updates to an API automatically trigger a new deployment. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_data_trace_enabled"></a> [data\_trace\_enabled](#input\_data\_trace\_enabled) | Whether data trace logging is enabled for the default route. | `bool` | `false` | no |
| <a name="input_deployment_id"></a> [deployment\_id](#input\_deployment\_id) | Deployment identifier of the stage. | `string` | `null` | no |
| <a name="input_detailed_metrics_enabled"></a> [detailed\_metrics\_enabled](#input\_detailed\_metrics\_enabled) | Whether detailed metrics are enabled for the default route. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the stage. | `string` | n/a | yes |
| <a name="input_stage_variables"></a> [stage\_variables](#input\_stage\_variables) | Map that defines the stage variables for the stage. | `map(string)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the stage. | `map(string)` | `{}` | no |
| <a name="input_throttling_burst_limit"></a> [throttling\_burst\_limit](#input\_throttling\_burst\_limit) | Throttling burst limit for the default route. | `number` | `0` | no |
| <a name="input_throttling_rate_limit"></a> [throttling\_rate\_limit](#input\_throttling\_rate\_limit) | Throttling rate limit for the default route. | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_stage"></a> [apigatewayv2\_stage](#output\_apigatewayv2\_stage) | Amazon API Gateway V2 Stage resource. |
