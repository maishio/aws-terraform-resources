# Amazon DocumentDB Cluster Instance

## Resources

| Name | Type |
|------|------|
| [aws_docdb_cluster_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any database modifications are applied immediately, or during the next maintenance window. | `bool` | `false` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | This parameter does not apply to Amazon DocumentDB. | `bool` | `true` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | The EC2 Availability Zone that the DB instance is created in. | `string` | `null` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | The identifier of the `aws_docdb_cluster` in which to launch this instance. | `string` | n/a | yes |
| <a name="input_enable_performance_insights"></a> [enable\_performance\_insights](#input\_enable\_performance\_insights) | A value that indicates whether to enable Performance Insights for the DB Instance. | `bool` | `false` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The name of the database engine to be used for the DocumentDB instance. | `string` | `"docdb"` | no |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | The instance class to use. | `string` | n/a | yes |
| <a name="input_instances"></a> [instances](#input\_instances) | Number of instances. | `number` | `1` | no |
| <a name="input_performance_insights_kms_key_id"></a> [performance\_insights\_kms\_key\_id](#input\_performance\_insights\_kms\_key\_id) | The KMS key identifier is the key ARN, key ID, alias ARN, or alias name for the KMS key. | `string` | `null` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The window to perform maintenance in. | `string` | `null` | no |
| <a name="input_promotion_tier"></a> [promotion\_tier](#input\_promotion\_tier) | n/a | `number` | `0` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_docdb_cluster_instance"></a> [docdb\_cluster\_instance](#output\_docdb\_cluster\_instance) | n/a |
