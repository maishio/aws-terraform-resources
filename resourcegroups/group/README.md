# AWS Resource Groups Group

## Resources

| Name | Type |
|------|------|
| [aws_resourcegroups_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/resourcegroups_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | A description of the resource group. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The resource group's name. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | path to the JSON document for setting the resource\_query. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_vars"></a> [vars](#input\_vars) | Variables used in the JSON document for setting the resource\_query. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resourcegroups_group"></a> [resourcegroups\_group](#output\_resourcegroups\_group) | n/a |
