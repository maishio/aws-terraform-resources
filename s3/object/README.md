# Amazon S3 Object

## Resources

| Name                                                                                                        | Type     |
| ----------------------------------------------------------------------------------------------------------- | -------- |
| [aws_s3_object.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |

## Inputs

| Name                                                   | Description                                  | Type          | Default | Required |
| ------------------------------------------------------ | -------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_bucket"></a> [bucket](#input_bucket)    | Name of the bucket.                          | `string`      | n/a     |   yes    |
| <a name="input_objects"></a> [objects](#input_objects) | A map of objects to create in the bucket.    | `any`         | `{}`    |    no    |
| <a name="input_tags"></a> [tags](#input_tags)          | A mapping of tags to assign to the resource. | `map(string)` | `{}`    |    no    |

## Outputs

| Name                                                           | Description                |
| -------------------------------------------------------------- | -------------------------- |
| <a name="output_s3_object"></a> [s3_object](#output_s3_object) | n/a |
