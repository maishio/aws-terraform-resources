# Amazon RDS Option Group

## Resources

| Name | Type |
|------|------|
| [aws_db_option_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_option_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_engine_name"></a> [engine\_name](#input\_engine\_name) | Specifies the name of the engine that this option group should be associated with. | `string` | n/a | yes |
| <a name="input_major_engine_version"></a> [major\_engine\_version](#input\_major\_engine\_version) | Specifies the major version of the engine that this option group should be associated with. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the option group. | `string` | n/a | yes |
| <a name="input_options"></a> [options](#input\_options) | Dynamic block for create the option. | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_option_group"></a> [db\_option\_group](#output\_db\_option\_group) | n/a |
