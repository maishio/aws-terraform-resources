# Amazon CloudFront Function Terraform Resource

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | ~> 1.4.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                            | Type     |
| ------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_cloudfront_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_function) | resource |

## Inputs

| Name                                                   | Description                                                             | Type     | Default                  | Required |
| ------------------------------------------------------ | ----------------------------------------------------------------------- | -------- | ------------------------ | :------: |
| <a name="input_comment"></a> [comment](#input_comment) | A comment to describe the function.                                     | `string` | `"Managed by Terraform"` |    no    |
| <a name="input_name"></a> [name](#input_name)          | Unique name for your CloudFront Function.                               | `string` | `null`                   |    no    |
| <a name="input_path"></a> [path](#input_path)          | Path to the CloudFront Function code.                                   | `string` | n/a                      |   yes    |
| <a name="input_publish"></a> [publish](#input_publish) | Whether to publish creation/change as Live CloudFront Function Version. | `bool`   | `false`                  |    no    |
| <a name="input_runtime"></a> [runtime](#input_runtime) | Identifier of the function's runtime.                                   | `string` | `"cloudfront-js-1.0"`    |    no    |
| <a name="input_vars"></a> [vars](#input_vars)          | Variables to pass to the CloudFront Function code.                      | `any`    | `{}`                     |    no    |

## Outputs

| Name                                                                                         | Description |
| -------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_cloudfront_function"></a> [cloudfront_function](#output_cloudfront_function) | n/a         |
