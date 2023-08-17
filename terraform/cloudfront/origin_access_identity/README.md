# Amazon CloudFront Origin Access Identity

## Resources

| Name                                                                                                                                                        | Type     |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_cloudfront_origin_access_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudfront_origin_access_identity) | resource |

## Inputs

| Name                                                   | Description                                         | Type     | Default                  | Required |
| ------------------------------------------------------ | --------------------------------------------------- | -------- | ------------------------ | :------: |
| <a name="input_comment"></a> [comment](#input_comment) | An optional comment for the origin access identity. | `string` | `"Managed by Terraform"` |    no    |

## Outputs

| Name                                                                                                                                   | Description                                        |
| -------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- |
| <a name="output_cloudfront_origin_access_identity"></a> [cloudfront_origin_access_identity](#output_cloudfront_origin_access_identity) | Amazon CloudFront Origin Access Identity resource. |
