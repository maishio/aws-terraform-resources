# AWS Glue Connection

## Resources

| Name | Type |
|------|------|
| [aws_glue_connection.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_connection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_catalog_id"></a> [catalog\_id](#input\_catalog\_id) | The ID of the Data Catalog in which to create the connection. | `string` | `null` | no |
| <a name="input_connection_properties"></a> [connection\_properties](#input\_connection\_properties) | A map of key-value pairs used as parameters for this connection. | `map(string)` | `{}` | no |
| <a name="input_connection_type"></a> [connection\_type](#input\_connection\_type) | The type of the connection. | `string` | `"JDBC"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the connection. | `string` | `null` | no |
| <a name="input_match_criteria"></a> [match\_criteria](#input\_match\_criteria) | A list of criteria that can be used in selecting this connection. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the connection. | `string` | n/a | yes |
| <a name="input_physical_connection_requirements"></a> [physical\_connection\_requirements](#input\_physical\_connection\_requirements) | dynamic block for physical\_connection\_requirements. | `list(any)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_glue_connection"></a> [glue\_connection](#output\_glue\_connection) | n/a |
