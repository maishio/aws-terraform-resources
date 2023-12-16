# AWS CloudFormation Stack

## Resources

| Name | Type |
|------|------|
| [aws_cloudformation_stack.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_capabilities"></a> [capabilities](#input\_capabilities) | A list of capabilities. | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Stack name. | `string` | n/a | yes |
| <a name="input_parameters"></a> [parameters](#input\_parameters) | A map of Parameter structures that specify input parameters for the stack. | `map(string)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of resource tags to associate with this stack. | `map(string)` | `{}` | no |
| <a name="input_template_body"></a> [template\_body](#input\_template\_body) | Structure containing the template body (max size: 51,200 bytes). | `string` | `null` | no |
| <a name="input_template_url"></a> [template\_url](#input\_template\_url) | Location of a file containing the template body (max size: 460,800 bytes). | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudformation_stack"></a> [cloudformation\_stack](#output\_cloudformation\_stack) | n/a |
