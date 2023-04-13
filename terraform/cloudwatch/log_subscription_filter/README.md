# Amazon CloudWatch Logs Log Subscription Filter Terraform Resource

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
| [aws_cloudwatch_log_subscription_filter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_subscription_filter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_destination_arn"></a> [destination\_arn](#input\_destination\_arn) | ARN of the destination to deliver matching log events to. Kinesis stream or Lambda function ARN. | `string` | `null` | no |
| <a name="input_distribution"></a> [distribution](#input\_distribution) | Method used to distribute log data to the destination. | `string` | `"ByLogStream"` | no |
| <a name="input_filter_pattern"></a> [filter\_pattern](#input\_filter\_pattern) | A valid CloudWatch Logs filter pattern for subscribing to a filtered stream of log events. | `string` | `""` | no |
| <a name="input_log_group_name"></a> [log\_group\_name](#input\_log\_group\_name) | Name of the log group. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the subscription filter. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudwatch_log_subscription_filter"></a> [cloudwatch\_log\_subscription\_filter](#output\_cloudwatch\_log\_subscription\_filter) | n/a |
