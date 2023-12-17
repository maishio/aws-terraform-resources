# Amazon Inspector Classic Assessment Target

## Resources

| Name | Type |
|------|------|
| [aws_inspector_assessment_target.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the assessment target. | `string` | n/a | yes |
| <a name="input_resource_group_arn"></a> [resource\_group\_arn](#input\_resource\_group\_arn) | Inspector Resource Group ARN stating tags for instance matching. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inspector_assessment_target"></a> [inspector\_assessment\_target](#output\_inspector\_assessment\_target) | n/a |
