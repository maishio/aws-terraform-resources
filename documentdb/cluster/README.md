# Amazon DocumentDB Cluster

## Resources

| Name | Type |
|------|------|
| [aws_docdb_cluster.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_apply_immediately"></a> [apply\_immediately](#input\_apply\_immediately) | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. | `bool` | `false` | no |
| <a name="input_availability_zones"></a> [availability\_zones](#input\_availability\_zones) | A list of EC2 Availability Zones that instances in the DB cluster can be created in. | `list(string)` | `[]` | no |
| <a name="input_backup_retention_period"></a> [backup\_retention\_period](#input\_backup\_retention\_period) | The days to retain backups for. | `number` | `1` | no |
| <a name="input_cluster_identifier"></a> [cluster\_identifier](#input\_cluster\_identifier) | The cluster identifier. | `string` | `null` | no |
| <a name="input_db_cluster_parameter_group_name"></a> [db\_cluster\_parameter\_group\_name](#input\_db\_cluster\_parameter\_group\_name) | A cluster parameter group to associate with the cluster. | `string` | `null` | no |
| <a name="input_db_subnet_group_name"></a> [db\_subnet\_group\_name](#input\_db\_subnet\_group\_name) | A DB subnet group to associate with this DB instance. | `string` | `null` | no |
| <a name="input_deletion_protection"></a> [deletion\_protection](#input\_deletion\_protection) | A value that indicates whether the DB cluster has deletion protection enabled. | `bool` | `true` | no |
| <a name="input_enabled_cloudwatch_logs_exports"></a> [enabled\_cloudwatch\_logs\_exports](#input\_enabled\_cloudwatch\_logs\_exports) | List of log types to export to cloudwatch. If omitted, no logs will be exported. | `list(string)` | `[]` | no |
| <a name="input_engine"></a> [engine](#input\_engine) | The name of the database engine to be used for this DB cluster. | `string` | `"docdb"` | no |
| <a name="input_engine_version"></a> [engine\_version](#input\_engine\_version) | The database engine version. Updating this argument results in an outage. | `string` | `null` | no |
| <a name="input_final_snapshot_identifier"></a> [final\_snapshot\_identifier](#input\_final\_snapshot\_identifier) | The name of your final DB snapshot when this DB cluster is deleted. | `string` | `null` | no |
| <a name="input_global_cluster_identifier"></a> [global\_cluster\_identifier](#input\_global\_cluster\_identifier) | The global cluster identifier specified on `aws_docdb_global_cluster`. | `string` | `null` | no |
| <a name="input_kms_key_id"></a> [kms\_key\_id](#input\_kms\_key\_id) | ARN for the KMS encryption key. | `string` | `null` | no |
| <a name="input_master_password"></a> [master\_password](#input\_master\_password) | Password for the master DB user. | `string` | n/a | yes |
| <a name="input_master_username"></a> [master\_username](#input\_master\_username) | Username for the master DB user. | `string` | n/a | yes |
| <a name="input_port"></a> [port](#input\_port) | The port on which the DB accepts connections. | `number` | `27017` | no |
| <a name="input_preferred_backup_window"></a> [preferred\_backup\_window](#input\_preferred\_backup\_window) | The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. | `string` | `null` | no |
| <a name="input_preferred_maintenance_window"></a> [preferred\_maintenance\_window](#input\_preferred\_maintenance\_window) | The weekly time range during which system maintenance can occur, in (UTC). | `string` | `null` | no |
| <a name="input_skip_final_snapshot"></a> [skip\_final\_snapshot](#input\_skip\_final\_snapshot) | Determines whether a final DB snapshot is created before the DB cluster is deleted. | `bool` | `false` | no |
| <a name="input_storage_encrypted"></a> [storage\_encrypted](#input\_storage\_encrypted) | Specifies whether the DB cluster is encrypted. | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the DB cluster. | `map(string)` | `{}` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | List of VPC security groups to associate with the Cluster. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_docdb_cluster"></a> [docdb\_cluster](#output\_docdb\_cluster) | n/a |
