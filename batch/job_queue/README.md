# AWS Batch Job Queue

## Resources

| Name | Type |
|------|------|
| [aws_batch_job_queue.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compute_environments"></a> [compute\_environments](#input\_compute\_environments) | List of compute environment ARNs mapped to a job queue. | `list(string)` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the job queue. | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | The priority of the job queue. | `number` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | The state of the job queue. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_batch_job_queue"></a> [batch\_job\_queue](#output\_batch\_job\_queue) | n/a |
