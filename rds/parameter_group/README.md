# Amazon RDS Parameter Group

## Resources

| Name | Type |
|------|------|
| [aws_db_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_parameter_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the DB parameter group. | `string` | `"Managed by Terraform"` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the DB parameter group. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the DB parameter group. | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | Dynamic block for create the parameter. | `any` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_parameter_group"></a> [db\_parameter\_group](#output\_db\_parameter\_group) | n/a |
