# Amazon DynamoDB Table Item

## Resources

| Name | Type |
|------|------|
| [dynamodb_table_item.this](https://registry.terraform.io/providers/hashicorp/dynamodb/latest/docs/resources/table_item) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | Hash key to use for lookups and identification of the item. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | File path to the JSON template defining the DynamoDB table item. | `string` | n/a | yes |
| <a name="input_range_key"></a> [range\_key](#input\_range\_key) | Range key to use for lookups and identification of the item. | `string` | `null` | no |
| <a name="input_table_name"></a> [table\_name](#input\_table\_name) | Name of the table to contain the item. | `string` | n/a | yes |
| <a name="input_vars"></a> [vars](#input\_vars) | A map of variables to be substituted into the JSON template for the DynamoDB table item. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_dynamodb_table_item"></a> [dynamodb\_table\_item](#output\_dynamodb\_table\_item) | Amazon DynamoDB Table Item resource. |
