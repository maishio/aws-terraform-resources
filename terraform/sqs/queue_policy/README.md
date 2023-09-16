# Amazon SQS Queue Policy

## Resources

| Name | Type |
|------|------|
| [aws_sqs_queue_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_path"></a> [path](#input\_path) | The template file to use for the SQS queue policy. | `string` | `null` | no |
| <a name="input_queue_url"></a> [queue\_url](#input\_queue\_url) | The URL of the SQS Queue to which to attach the policy. | `string` | n/a | yes |
| <a name="input_vars"></a> [vars](#input\_vars) | The variables to use for the SQS queue policy. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_queue_policy"></a> [sqs\_queue\_policy](#output\_sqs\_queue\_policy) | Amazon SQS Queue Policy resource. |
<!-- END_TF_DOCS -->
