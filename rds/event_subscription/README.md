# Amazon RDS Event Subscription

## Resources

| Name | Type |
|------|------|
| [aws_db_event_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_event_subscription) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | A boolean flag to enable/disable the subscription. | `bool` | `true` | no |
| <a name="input_event_categories"></a> [event\_categories](#input\_event\_categories) | A list of event categories for a SourceType that you want to subscribe to. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the DB event subscription. | `string` | `null` | no |
| <a name="input_sns_topic"></a> [sns\_topic](#input\_sns\_topic) | The SNS topic to send events to. | `string` | `null` | no |
| <a name="input_source_ids"></a> [source\_ids](#input\_source\_ids) | A list of identifiers of the event sources for which events will be returned. | `list(string)` | `[]` | no |
| <a name="input_source_type"></a> [source\_type](#input\_source\_type) | The type of source that will be generating the events. | `string` | `"db-instance"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_event_subscription"></a> [db\_event\_subscription](#output\_db\_event\_subscription) | n/a |
