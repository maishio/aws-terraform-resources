# Amazon S3 Bucket Public Access Block

## Resources

| Name                                                                                                                                                | Type     |
| --------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name                                                                                                   | Description                                                               | Type     | Default | Required |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------- | -------- | ------- | :------: |
| <a name="input_block_public_acls"></a> [block_public_acls](#input_block_public_acls)                   | Whether Amazon S3 should block public ACLs for this bucket.               | `bool`   | `true`  |    no    |
| <a name="input_block_public_policy"></a> [block_public_policy](#input_block_public_policy)             | Whether Amazon S3 should block public bucket policies for this bucket.    | `bool`   | `true`  |    no    |
| <a name="input_bucket"></a> [bucket](#input_bucket)                                                    | Name of the bucket.                                                       | `string` | n/a     |   yes    |
| <a name="input_ignore_public_acls"></a> [ignore_public_acls](#input_ignore_public_acls)                | Whether Amazon S3 should ignore public ACLs for this bucket.              | `bool`   | `true`  |    no    |
| <a name="input_restrict_public_buckets"></a> [restrict_public_buckets](#input_restrict_public_buckets) | Whether Amazon S3 should restrict public bucket policies for this bucket. | `bool`   | `true`  |    no    |

## Outputs

| Name                                                                                                                       | Description                                    |
| -------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------- |
| <a name="output_s3_bucket_public_access_block"></a> [s3_bucket_public_access_block](#output_s3_bucket_public_access_block) | Amazon S3 Bucket Public Access Block resource. |
