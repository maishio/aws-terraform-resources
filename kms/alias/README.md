# Amazon KMS Alias
## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The display name of the alias. | `string` | `null` | no |
| <a name="input_target_key_id"></a> [target\_key\_id](#input\_target\_key\_id) | Identifier for the key for which the alias is for, can be either an ARN or key\_id. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kms_alias"></a> [kms\_alias](#output\_kms\_alias) | n/a |
