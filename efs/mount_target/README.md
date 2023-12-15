# Amazon EFS Mount Target

## Resources

| Name | Type |
|------|------|
| [aws_efs_mount_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_mount_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_file_system_id"></a> [file\_system\_id](#input\_file\_system\_id) | The ID of the file system for which the mount target is intended. | `string` | n/a | yes |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of up to 5 VPC security group IDs in effect for the mount target. | `list(string)` | `[]` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | The ID of the subnet to add the mount target in. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_efs_mount_target"></a> [efs\_mount\_target](#output\_efs\_mount\_target) | n/a |
