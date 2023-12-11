# Amazon RDS Aurora Cluster Instance

## Resources

| Name | Type |
|------|------|
| [aws_rds_cluster_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/rds_cluster_instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any database modifications are applied immediately, or during the next maintenance window. | `bool` | `false` | no |
| <a name="input_auto_minor_version_upgrade"></a> [auto\_minor\_version\_upgrade](#input\_auto\_minor\_version\_upgrade) | Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. | `bool` | `true` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | EC2 Availability Zone that the DB instance is created in. | `string` | `null` | no |
| <a name="input_ca_cert_identifier"></a> [ca\_cert\_identifier](#input\_ca\_cert\_identifier) | Identifier of the CA certificate for the DB instance. | `string` | `null` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | Identifier of the `aws_rds_cluster` in which to launch this instance. | `string` | n/a | yes |
| <a name="input_copy_tags_to_snapshot"></a> [copy\_tags\_to\_snapshot](#input\_copy\_tags\_to\_snapshot) | Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. | `bool` | `false` | no |
| <a name="input_db_parameter_group_name"></a> [db\_parameter\_group\_name](#input\_db\_parameter\_group\_name) | Name of the DB parameter group to associate with this instance. | `string` | `null` | no |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | DB subnet group to associate with this DB instance. | `string` | n/a | yes |
| <a name="input_engine"></a> [engine](#input\_engine) | Name of the database engine to be used for the RDS cluster instance. | `string` | n/a | yes |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | Database engine version. | `string` | `null` | no |
| <a name="input_identifier"></a> [identifier](#input\_identifier) | Identifier for the RDS instance. | `string` | n/a | yes |
| <a name="input_instance_class"></a> [instance\_class](#input\_instance\_class) | Instance class to use. | `string` | n/a | yes |
| <a name="input_instances"></a> [instances](#input\_instances) | Number of instances to create. | `number` | `1` | no |
| <a name="input_monitoring_interval"></a> [monitoring\_interval](#input\_monitoring\_interval) | Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. | `number` | `0` | no |
| <a name="input_performance_insights_enabled"></a> [performance\_insights\_enabled](#input\_performance\_insights\_enabled) | Specifies whether Performance Insights is enabled or not. | `bool` | `false` | no |
| <a name="input_performance_insights_kms_key_id"></a> [performance\_insights\_kms\_key\_id](#input\_performance\_insights\_kms\_key\_id) | ARN for the KMS key to encrypt Performance Insights data. | `string` | `null` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | Window to perform maintenance in. | `string` | `null` | no |
| <a name="input_promotion_tier"></a> [promotion\_tier](#input\_promotion\_tier) | Failover Priority setting on instance level. | `number` | `0` | no |
| <a name="input_publicly_accessible"></a> [publicly\_accessible](#input\_publicly\_accessible) | Bool to control if instance is publicly accessible. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the instance. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rds_cluster_instance"></a> [rds\_cluster\_instance](#output\_rds\_cluster\_instance) | n/a |
