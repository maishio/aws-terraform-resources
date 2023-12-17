# Amazon Inspector Classic Assessment Template

## Resources

| Name | Type |
|------|------|
| [aws_inspector_assessment_template.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector_assessment_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_duration"></a> [duration](#input\_duration) | The duration of the inspector run. | `number` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | The name of the assessment template. | `string` | n/a | yes |
| <a name="input_rules_package_arns"></a> [rules\_package\_arns](#input\_rules\_package\_arns) | The rules to be used during the run. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of tags for the Inspector assessment template. | `map(string)` | `{}` | no |
| <a name="input_target_arn"></a> [target\_arn](#input\_target\_arn) | The assessment target ARN to attach the template to. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_inspector_assessment_template"></a> [inspector\_assessment\_template](#output\_inspector\_assessment\_template) | n/a |
