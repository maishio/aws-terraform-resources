# Amazon S3 Bucket Policy

## Resources

| Name                                                                                                                      | Type     |
| ------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |

## Inputs

| Name                                                | Description                               | Type          | Default | Required |
| --------------------------------------------------- | ----------------------------------------- | ------------- | ------- | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket) | Name of the bucket.                       | `string`      | n/a     |   yes    |
| <a name="input_path"></a> [path](#input_path)       | Path to the policy document.              | `string`      | `null`  |    no    |
| <a name="input_vars"></a> [vars](#input_vars)       | Variables to pass to the policy document. | `map(string)` | `{}`    |    no    |

## Outputs

| Name                                                                                | Description                       |
| ----------------------------------------------------------------------------------- | --------------------------------- |
| <a name="output_s3_bucket_policy"></a> [s3_bucket_policy](#output_s3_bucket_policy) | n/a |
