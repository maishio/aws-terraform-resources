# AWS Lambda Permission

## Resources

| Name | Type |
|------|------|
| [aws_lambda_permission.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_action"></a> [action](#input\_action) | AWS Lambda action you want to allow in this statement. Defaults to `lambda:InvokeFunction`. | `string` | `"lambda:InvokeFunction"` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Name of the Lambda function. | `string` | n/a | yes |
| <a name="input_principal"></a> [principal](#input\_principal) | Principal who is getting this permission. | `string` | `null` | no |
| <a name="input_source_arn"></a> [source\_arn](#input\_source\_arn) | ARN of the invokable AWS resource. | `string` | `null` | no |
| <a name="input_statement_id"></a> [statement\_id](#input\_statement\_id) | A unique statement identifier. By default generated by Terraform. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_permission"></a> [lambda\_permission](#output\_lambda\_permission) | n/a |