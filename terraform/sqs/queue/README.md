# Amazon SQS Queue

## Resources

| Name | Type |
|------|------|
| [aws_sqs_queue.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content_based_deduplication"></a> [content\_based\_deduplication](#input\_content\_based\_deduplication) | Enables content-based deduplication for FIFO queues. | `bool` | `false` | no |
| <a name="input_delay_seconds"></a> [delay\_seconds](#input\_delay\_seconds) | The time in seconds that the delivery of all messages in the queue will be delayed. | `number` | `0` | no |
| <a name="input_fifo_queue"></a> [fifo\_queue](#input\_fifo\_queue) | Boolean designating a FIFO queue. | `bool` | `false` | no |
| <a name="input_kms_data_key_reuse_period_seconds"></a> [kms\_data\_key\_reuse\_period\_seconds](#input\_kms\_data\_key\_reuse\_period\_seconds) | The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. | `number` | `300` | no |
| <a name="input_max_message_size"></a> [max\_message\_size](#input\_max\_message\_size) | The limit of how many bytes a message can contain before Amazon SQS rejects it. | `number` | `262144` | no |
| <a name="input_message_retention_seconds"></a> [message\_retention\_seconds](#input\_message\_retention\_seconds) | The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). | `number` | `345600` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the queue. | `string` | n/a | yes |
| <a name="input_policy_path"></a> [policy\_path](#input\_policy\_path) | The template file to use for the SQS queue policy. | `string` | `null` | no |
| <a name="input_policy_vars"></a> [policy\_vars](#input\_policy\_vars) | The variables to use for the SQS queue policy. | `map(string)` | `{}` | no |
| <a name="input_receive_wait_time_seconds"></a> [receive\_wait\_time\_seconds](#input\_receive\_wait\_time\_seconds) | The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. | `number` | `0` | no |
| <a name="input_redrive_allow_policy_path"></a> [redrive\_allow\_policy\_path](#input\_redrive\_allow\_policy\_path) | The template file to use for the Dead Letter Queue redrive policy. | `string` | `null` | no |
| <a name="input_redrive_allow_policy_vars"></a> [redrive\_allow\_policy\_vars](#input\_redrive\_allow\_policy\_vars) | The variables to use for the Dead Letter Queue redrive policy. | `map(string)` | `{}` | no |
| <a name="input_redrive_policy"></a> [redrive\_policy](#input\_redrive\_policy) | The template file to use for the Dead Letter Queue policy. | `string` | `null` | no |
| <a name="input_redrive_policy_vars"></a> [redrive\_policy\_vars](#input\_redrive\_policy\_vars) | The variables to use for the Dead Letter Queue policy. | `map(string)` | `{}` | no |
| <a name="input_sqs_managed_sse_enabled"></a> [sqs\_managed\_sse\_enabled](#input\_sqs\_managed\_sse\_enabled) | Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_visibility_timeout_seconds"></a> [visibility\_timeout\_seconds](#input\_visibility\_timeout\_seconds) | The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). | `number` | `0` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_queue"></a> [sqs\_queue](#output\_sqs\_queue) | Amazon SQS Queue resource. |
