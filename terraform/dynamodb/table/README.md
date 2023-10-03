# Amazon DynamoDB Table

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attribute"></a> [attribute](#input\_attribute) | Set of nested attribute definitions. | `list(any)` | `[]` | no |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | Controls how you are charged for read and write throughput and how you manage capacity. | `string` | `"PROVISIONED"` | no |
| <a name="input_deletion_protection_enabled"></a> [deletion\_protection\_enabled](#input\_deletion\_protection\_enabled) | Enables deletion protection for table. | `bool` | `false` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | Attribute to use as the hash (partition) key. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Unique within a region name of the table. | `string` | n/a | yes |
| <a name="input_point_in_time_recovery"></a> [point\_in\_time\_recovery](#input\_point\_in\_time\_recovery) | Enable point-in-time recovery options. | `bool` | `false` | no |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | Attribute to use as the range (sort) key. | `string` | `null` | no |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | Number of read units for this table. | `number` | `null` | no |
| <a name="input_stream_enabled"></a> [stream\_enabled](#input\_stream\_enabled) | Whether Streams are enabled. | `bool` | `false` | no |
| <a name="input_stream_view_type"></a> [stream\_view\_type](#input\_stream\_view\_type) | When an item in the table is modified, StreamViewType determines what information is written to the table's stream. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to populate on the created table. | `map(string)` | `{}` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Configuration block for TTL. | `list(any)` | `[]` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | Number of write units for this table. | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb_table"></a> [dynamodb\_table](#output\_dynamodb\_table) | Amazon DynamoDB Table resource. |
