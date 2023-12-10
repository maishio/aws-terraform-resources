# Amazon S3 Bucket Logging

## Resources

| Name                                                                                                                        | Type     |
| --------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket_logging.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_logging) | resource |

## Inputs

| Name                                                                     | Description                                                              | Type     | Default | Required |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | -------- | ------- | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)                      | Name of the bucket.                                                      | `string` | n/a     |   yes    |
| <a name="input_target_bucket"></a> [target_bucket](#input_target_bucket) | Name of the bucket where you want Amazon S3 to store server access logs. | `string` | `null`  |    no    |
| <a name="input_target_prefix"></a> [target_prefix](#input_target_prefix) | Prefix for all log object keys.                                          | `string` | `null`  |    no    |

## Outputs

| Name                                                                                   | Description                        |
| -------------------------------------------------------------------------------------- | ---------------------------------- |
| <a name="output_s3_bucket_logging"></a> [s3_bucket_logging](#output_s3_bucket_logging) | n/a |
