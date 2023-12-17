# AWS IAM Access Analyzer Analyzer

## Resources

| Name | Type |
|------|------|
| [aws_accessanalyzer_analyzer.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/accessanalyzer_analyzer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_analyzer_name"></a> [analyzer\_name](#input\_analyzer\_name) | Name of the Analyzer. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of Analyzer. | `string` | `"ACCOUNT"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_accessanalyzer_analyzer"></a> [accessanalyzer\_analyzer](#output\_accessanalyzer\_analyzer) | n/a |
