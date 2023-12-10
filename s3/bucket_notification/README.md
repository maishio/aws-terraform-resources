# Amazon S3 Bucket Notification

## Resources

| Name                                                                                                                                  | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket_notification.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_notification) | resource |

## Inputs

| Name                                                                           | Description                                   | Type        | Default | Required |
| ------------------------------------------------------------------------------ | --------------------------------------------- | ----------- | ------- | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)                            | Name of the bucket.                           | `string`    | n/a     |   yes    |
| <a name="input_lambda_function"></a> [lambda_function](#input_lambda_function) | Dynamic block for create the lambda_function. | `list(any)` | `[]`    |    no    |

## Outputs

| Name                                                                                                  | Description                             |
| ----------------------------------------------------------------------------------------------------- | --------------------------------------- |
| <a name="output_s3_bucket_notification"></a> [s3_bucket_notification](#output_s3_bucket_notification) | n/a |
