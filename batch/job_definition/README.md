# AWS Batch Job Definition

## Resources

| Name | Type |
|------|------|
| [aws_batch_job_definition.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the job definition. | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | Specifies the parameter substitution placeholders to set in the job definition. | `map(string)` | `{}` | no |
| <a name="input_path"></a> [path](#input\_path) | path to the JSON document for setting the container\_properties. | `string` | n/a | yes |
| <a name="input_platform_capabilities"></a> [platform\_capabilities](#input\_platform\_capabilities) | The platform capabilities required by the job definition. | `list(string)` | <pre>[<br>  "EC2"<br>]</pre> | no |
| <a name="input_propagate_tags"></a> [propagate\_tags](#input\_propagate\_tags) | Specifies whether to propagate the tags from the job definition to the corresponding Amazon ECS task. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of job definition. | `string` | n/a | yes |
| <a name="input_vars"></a> [vars](#input\_vars) | Variables used in the JSON document for setting the container\_properties. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_batch_job_definition"></a> [batch\_job\_definition](#output\_batch\_job\_definition) | n/a |
