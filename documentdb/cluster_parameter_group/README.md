# Amazon DocumentDB Cluster Parameter Group

## Resources

| Name | Type |
|------|------|
| [aws_docdb_cluster_parameter_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster_parameter_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | The description of the DocumentDB cluster parameter group. | `string` | `"Managed by Terraform"` | no |
| <a name="input_family"></a> [family](#input\_family) | The family of the DocumentDB cluster parameter group. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the DocumentDB cluster parameter group. | `string` | n/a | yes |
| <a name="input_parameter"></a> [parameter](#input\_parameter) | A list of DocumentDB parameters to apply. | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_docdb_cluster_parameter_group"></a> [docdb\_cluster\_parameter\_group](#output\_docdb\_cluster\_parameter\_group) | n/a |
