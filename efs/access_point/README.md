# Amazon EFS Access Point

## Resources

| Name | Type |
|------|------|
| [aws_efs_access_point.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file_system_id"></a> [file\_system\_id](#input\_file\_system\_id) | ID of the file system for which the access point is intended. | `string` | n/a | yes |
| <a name="input_gid"></a> [gid](#input\_gid) | POSIX group ID used for all file system operations using this access point. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the access point. | `string` | n/a | yes |
| <a name="input_owner_gid"></a> [owner\_gid](#input\_owner\_gid) | POSIX group ID to apply to the `root_directory`. | `number` | n/a | yes |
| <a name="input_owner_uid"></a> [owner\_uid](#input\_owner\_uid) | POSIX user ID to apply to the `root_directory`. | `number` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. | `string` | `null` | no |
| <a name="input_permissions"></a> [permissions](#input\_permissions) | POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits. | `number` | n/a | yes |
| <a name="input_secondary_gids"></a> [secondary\_gids](#input\_secondary\_gids) | Secondary POSIX group IDs used for all file system operations using this access point. | `number` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value mapping of resource tags. | `map(string)` | `{}` | no |
| <a name="input_uid"></a> [uid](#input\_uid) | POSIX user ID used for all file system operations using this access point. | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_efs_access_point"></a> [efs\_access\_point](#output\_efs\_access\_point) | n/a |
