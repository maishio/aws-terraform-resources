# AWS Config Terraform Resource

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.3.0 |

## Providers

| Name | Version   |
|------|-----------|
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_config_configuration_recorder.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder_status.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_delivery_channel.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_delivery_channel) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_all_supported"></a> [all\_supported](#input\_all\_supported) | Specifies whether AWS Config records configuration changes for every supported type of regional resource. | `bool` | `true` | no |
| <a name="input_channel_name"></a> [channel\_name](#input\_channel\_name) | Name of the delivery channel. Defaults to `default`. | `string` | n/a | yes |
| <a name="input_include_global_resource_types"></a> [include\_global\_resource\_types](#input\_include\_global\_resource\_types) | Specifies whether AWS Config includes all supported types of global resources with the resources that it records. | `bool` | `false` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | Whether the configuration recorder should be enabled or disabled. | `bool` | `true` | no |
| <a name="input_recorder_name"></a> [recorder\_name](#input\_recorder\_name) | Name of the recorder. Defaults to `default`. | `string` | `"default"` | no |
| <a name="input_resource_types"></a> [resource\_types](#input\_resource\_types) | A list that specifies the types of AWS resources for which AWS Config records configuration changes. | `list(string)` | `[]` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | ARN of the IAM role. Used to make read or write requests to the delivery channel and to describe the AWS resources associated with the account. | `string` | n/a | yes |
| <a name="input_s3_bucket_name"></a> [s3\_bucket\_name](#input\_s3\_bucket\_name) | Name of the S3 bucket. | `string` | n/a | yes |
| <a name="input_s3_key_prefix"></a> [s3\_key\_prefix](#input\_s3\_key\_prefix) | Prefix for the specified S3 bucket. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_config_configuration_recorder"></a> [config\_configuration\_recorder](#output\_config\_configuration\_recorder) | n/a |
| <a name="output_config_configuration_recorder_status"></a> [config\_configuration\_recorder\_status](#output\_config\_configuration\_recorder\_status) | n/a |
| <a name="output_config_delivery_channel"></a> [config\_delivery\_channel](#output\_config\_delivery\_channel) | n/a |

## Usage

```hcl
module "config" {
  source                        = "git::https://github.com/maishio/terraform-aws-resources.git//config?ref=v4.10.0"
  include_global_resource_types = true
  role_arn                      = module.iam.iam_role.arn
  s3_bucket_name                = module.s3.s3_bucket.bucket
  s3_key_prefix                 = "config"
}
``
