# Amazon SES Receipt Rule

## Resources

| Name | Type |
|------|------|
| [aws_ses_receipt_rule.store](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ses_receipt_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_header_action"></a> [add\_header\_action](#input\_add\_header\_action) | A list of Add Header Action blocks. | `list(map(any))` | `[]` | no |
| <a name="input_bounce_action"></a> [bounce\_action](#input\_bounce\_action) | A list of Bounce Action blocks. | `list(map(any))` | `[]` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | If true, the rule will be enabled. | `bool` | `true` | no |
| <a name="input_lambda_action"></a> [lambda\_action](#input\_lambda\_action) | A list of Lambda Action blocks. | `list(map(any))` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the receipt rule. | `string` | n/a | yes |
| <a name="input_recipients"></a> [recipients](#input\_recipients) | A list of email addresses. | `list(string)` | `[]` | no |
| <a name="input_rule_set_name"></a> [rule\_set\_name](#input\_rule\_set\_name) | Name of the rule set. | `string` | n/a | yes |
| <a name="input_s3_action"></a> [s3\_action](#input\_s3\_action) | A list of S3 Action blocks. | `list(map(any))` | `[]` | no |
| <a name="input_scan_enabled"></a> [scan\_enabled](#input\_scan\_enabled) | If true, incoming emails will be scanned for spam and viruses. | `bool` | `true` | no |
| <a name="input_sns_action"></a> [sns\_action](#input\_sns\_action) | A list of SNS Action blocks. | `list(map(any))` | `[]` | no |
| <a name="input_stop_action"></a> [stop\_action](#input\_stop\_action) | A list of Stop Action blocks. | `list(map(any))` | `[]` | no |
| <a name="input_workmail_action"></a> [workmail\_action](#input\_workmail\_action) | A list of WorkMail Action blocks. | `list(map(any))` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ses_receipt_rule_set"></a> [ses\_receipt\_rule\_set](#output\_ses\_receipt\_rule\_set) | Amazon SES Receipt Rule Set resource. |
