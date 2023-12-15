# Amazon EFS Backup Policy

## Resources

| Name | Type |
|------|------|
| [aws_efs_backup_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_backup_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file_system_id"></a> [file\_system\_id](#input\_file\_system\_id) | The ID of the EFS file system. | `string` | n/a | yes |
| <a name="input_status"></a> [status](#input\_status) | A status of the backup policy. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_efs_backup_policy"></a> [efs\_backup\_policy](#output\_efs\_backup\_policy) | n/a |
