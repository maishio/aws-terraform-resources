# AWS IAM Policy

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the policy. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the policy. | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Path to the policy. | `string` | `null` | no |
| <a name="input_role"></a> [role](#input\_role) | Name of the IAM role to attach the policy to. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vars"></a> [vars](#input\_vars) | Variables to be used in the policy. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_policy"></a> [iam\_policy](#output\_iam\_policy) | n/a |
