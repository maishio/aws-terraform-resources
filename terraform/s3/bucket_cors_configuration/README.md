# Amazon S3 Bucket CORS Configuration Terraform Resource

## Requirements

| Name      | Version  |
| --------- | -------- |
| terraform | >= 1.4.0 |

## Providers

| Name | Version   |
| ---- | --------- |
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                              | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket_cors_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_cors_configuration) | resource |

## Inputs

| Name                                                         | Description                             | Type        | Default | Required |
| ------------------------------------------------------------ | --------------------------------------- | ----------- | ------- | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)          | Name of the bucket.                     | `string`    | n/a     |   yes    |
| <a name="input_cors_rule"></a> [cors_rule](#input_cors_rule) | Dynamic block for create the cors_rule. | `list(any)` | `[]`    |    no    |

## Outputs

| Name                                                                                                                    | Description                                   |
| ----------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- |
| <a name="output_s3_bucket_cors_configuration"></a> [s3_bucket_cors_configuration](#output_s3_bucket_cors_configuration) | Amazon S3 Bucket CORS Configuration resource. |
