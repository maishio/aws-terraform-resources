# Amazon Inspector Enabler

## Resources

| Name | Type |
|------|------|
| [aws_inspector2_enabler.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector2_enabler) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_account_ids"></a> [account\_ids](#input\_account\_ids) | Set of account IDs. | `list(string)` | n/a | yes |
| <a name="input_resource_types"></a> [resource\_types](#input\_resource\_types) | Type of resources to scan. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inspector2_enabler"></a> [inspector2\_enabler](#output\_inspector2\_enabler) | n/a |
