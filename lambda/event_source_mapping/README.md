# AWS Lambda Event Source Mapping Terraform Resource

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.3.0 |

## Providers

| Name | Version   |
|------|-----------|
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lambda_event_source_mapping.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_batch_size"></a> [batch\_size](#input\_batch\_size) | The largest number of records that AWS Lambda will retrieve from your event source at the time of invoking your function. | `number` | `null` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Determines if the mapping will be enabled on creation. Defaults to `true`. | `bool` | `true` | no |
| <a name="input_event_source_arn"></a> [event\_source\_arn](#input\_event\_source\_arn) | ARN of the event source. | `string` | `null` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Name of the function. | `string` | n/a | yes |
| <a name="input_maximum_batching_window_in_seconds"></a> [maximum\_batching\_window\_in\_seconds](#input\_maximum\_batching\_window\_in\_seconds) | Maximum amount of time to gather records before invoking the function, in seconds(between 0 and 300). | `number` | `null` | no |
| <a name="input_starting_position"></a> [starting\_position](#input\_starting\_position) | The position in the stream where AWS Lambda should start reading. Must be one of `AT_TIMESTAMP` (Kinesis only), `LATEST` or `TRIM_HORIZON`. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_event_source_mapping"></a> [lambda\_event\_source\_mapping](#output\_lambda\_event\_source\_mapping) | n/a |
