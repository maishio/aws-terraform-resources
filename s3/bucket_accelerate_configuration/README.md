# Amazon S3 Bucket Accelerate Configuration

## Resources

| Name                                                                                                                                                          | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket_accelerate_configuration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_accelerate_configuration) | resource |

## Inputs

| Name                                                                                             | Description                                                                            | Type     | Default       | Required |
| ------------------------------------------------------------------------------------------------ | -------------------------------------------------------------------------------------- | -------- | ------------- | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)                                              | Name of the bucket.                                                                    | `string` | n/a           |   yes    |
| <a name="input_expected_bucket_owner"></a> [expected_bucket_owner](#input_expected_bucket_owner) | Account ID of the expected bucket owner.                                               | `string` | `null`        |    no    |
| <a name="input_status"></a> [status](#input_status)                                              | Transfer acceleration state of the bucket. Valid values are `Enabled` and `Suspended`. | `string` | `"Suspended"` |    no    |

## Outputs

| Name                                                                                                                                      | Description                                         |
| ----------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------- |
| <a name="output_s3_bucket_accelerate_configuration"></a> [s3_bucket_accelerate_configuration](#output_s3_bucket_accelerate_configuration) | n/a |
