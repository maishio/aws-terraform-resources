# AWS Glue Job

## Resources

| Name | Type |
|------|------|
| [aws_glue_job.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_command_name"></a> [command\_name](#input\_command\_name) | The name of the job command. | `string` | `"glueetl"` | no |
| <a name="input_connections"></a> [connections](#input\_connections) | The list of connections used for this job. | `list(string)` | `[]` | no |
| <a name="input_default_arguments"></a> [default\_arguments](#input\_default\_arguments) | The map of default arguments for this job. | `map(string)` | `{}` | no |
| <a name="input_execution_class"></a> [execution\_class](#input\_execution\_class) | Indicates whether the job is run with a standard or flexible execution class. | `string` | `"STANDARD"` | no |
| <a name="input_glue_version"></a> [glue\_version](#input\_glue\_version) | The version of glue to use, for example `1.0`. | `string` | `null` | no |
| <a name="input_max_capacity"></a> [max\_capacity](#input\_max\_capacity) | The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. | `number` | `null` | no |
| <a name="input_max_concurrent_runs"></a> [max\_concurrent\_runs](#input\_max\_concurrent\_runs) | The maximum number of concurrent runs allowed for a job. | `number` | `1` | no |
| <a name="input_max_retries"></a> [max\_retries](#input\_max\_retries) | The maximum number of times to retry this job if it fails. | `number` | `0` | no |
| <a name="input_name"></a> [name](#input\_name) | The name you assign to this job. | `string` | n/a | yes |
| <a name="input_non_overridable_arguments"></a> [non\_overridable\_arguments](#input\_non\_overridable\_arguments) | Non-overridable arguments for this job, specified as name-value pairs. | `map(string)` | `{}` | no |
| <a name="input_number_of_workers"></a> [number\_of\_workers](#input\_number\_of\_workers) | The number of workers of a defined workerType that are allocated when a job runs. | `number` | `null` | no |
| <a name="input_python_version"></a> [python\_version](#input\_python\_version) | The Python version being used to execute a Python shell job. | `string` | `null` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | The ARN of the IAM role associated with this job. | `string` | n/a | yes |
| <a name="input_script_location"></a> [script\_location](#input\_script\_location) | Specifies the S3 path to a script that executes a job. | `string` | n/a | yes |
| <a name="input_security_configuration"></a> [security\_configuration](#input\_security\_configuration) | The name of the Security Configuration to be associated with the job. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | The job timeout in minutes. | `number` | `2880` | no |
| <a name="input_worker_type"></a> [worker\_type](#input\_worker\_type) | The type of predefined worker that is allocated when a job runs. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_glue_job"></a> [glue\_job](#output\_glue\_job) | n/a |
