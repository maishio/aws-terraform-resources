# AWS Lambda

## Resources

| Name | Type |
|------|------|
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the Lambda function. | `string` | `null` | no |
| <a name="input_environments"></a> [environments](#input\_environments) | A list of environment objects for the dynamic block. | `any` | `[]` | no |
| <a name="input_filename"></a> [filename](#input\_filename) | The path to the function's deployment package within the local filesystem. | `string` | `null` | no |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | Name of the function. | `string` | `null` | no |
| <a name="input_handler"></a> [handler](#input\_handler) | Function entrypoint in your code. | `string` | `null` | no |
| <a name="input_image_uri"></a> [image\_uri](#input\_image\_uri) | URI of a container image in the Amazon ECR registry. | `string` | `null` | no |
| <a name="input_layers"></a> [layers](#input\_layers) | A list of Lambda layer ARNs to attach to your Lambda function. | `list(string)` | `[]` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | Amount of memory in MB your Lambda function can use at runtime. Defaults to `128`. | `number` | `128` | no |
| <a name="input_package_type"></a> [package\_type](#input\_package\_type) | The type of deployment package. Valid values are `Zip` and `Image`. Defaults to `Zip`. | `string` | `"Zip"` | no |
| <a name="input_role"></a> [role](#input\_role) | ARN of the function's execution role. | `string` | `null` | no |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | Identifier of the function's runtime. | `string` | `null` | no |
| <a name="input_source_code_hash"></a> [source\_code\_hash](#input\_source\_code\_hash) | Base64-encoded representation of raw SHA-256 sum of the zip file. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Amount of time your Lambda Function has to run in seconds. Defaults to `3`. | `number` | `3` | no |
| <a name="input_vpc_config"></a> [vpc\_config](#input\_vpc\_config) | A list of VPC configuration objects for the dynamic block. | `any` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lambda_function"></a> [lambda\_function](#output\_lambda\_function) | n/a |
