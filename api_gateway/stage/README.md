# Amazon API Gateway Stage

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_stage.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_stage) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_log_settings"></a> [access\_log\_settings](#input\_access\_log\_settings) | Dynamic block for access\_log\_settings. | `list(any)` | `[]` | no |
| <a name="input_deployment_id"></a> [deployment\_id](#input\_deployment\_id) | ID of the deployment that the stage points to. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the stage. | `string` | `null` | no |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | ID of the associated REST API. | `string` | n/a | yes |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | Name of the stage. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_variables"></a> [variables](#input\_variables) | Map that defines the stage variables. | `map(string)` | `{}` | no |
| <a name="input_xray_tracing_enabled"></a> [xray\_tracing\_enabled](#input\_xray\_tracing\_enabled) | Whether active tracing with X-ray is enabled. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_stage"></a> [api\_gateway\_stage](#output\_api\_gateway\_stage) | n/a |
