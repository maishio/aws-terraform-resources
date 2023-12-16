# AWS Step Functions State Machine

## Resources

| Name | Type |
|------|------|
| [aws_sfn_state_machine.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_include_execution_data"></a> [include\_execution\_data](#input\_include\_execution\_data) | Determines whether execution data is included in your log. | `bool` | `false` | no |
| <a name="input_level"></a> [level](#input\_level) | Defines which category of execution history events are logged. | `string` | `null` | no |
| <a name="input_log_destination"></a> [log\_destination](#input\_log\_destination) | ARN of a CloudWatch log group. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the state machine. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | path to the JSON document for setting the definition. | `string` | n/a | yes |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | ARN of the IAM role to use for this state machine. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Determines whether a Standard or Express state machine is created. | `string` | `"STANDARD"` | no |
| <a name="input_vars"></a> [vars](#input\_vars) | Variables used in the JSON document for setting the definition. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sfn_state_machine"></a> [sfn\_state\_machine](#output\_sfn\_state\_machine) | n/a |
