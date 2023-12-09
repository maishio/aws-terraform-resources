# Amazon SNS Topic Policy

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_arn"></a> [arn](#input\_arn) | ARN of the SNS topic. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | File path to the SNS topic policy template. | `string` | n/a | yes |
| <a name="input_vars"></a> [vars](#input\_vars) | A map of variables to substitute into the SNS topic policy template. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sns_topic_policy"></a> [sns\_topic\_policy](#output\_sns\_topic\_policy) | Amazon SNS Topic Policy resource. |
