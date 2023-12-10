# Amazon DocumentDB Subnet Group

## Resources

| Name | Type |
|------|------|
| [aws_docdb_subnet_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the docDB subnet group. | `string` | `"Managed by Terraform"` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the docDB subnet group. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | A list of VPC subnet IDs. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_docdb_subnet_group"></a> [docdb\_subnet\_group](#output\_docdb\_subnet\_group) | n/a |
