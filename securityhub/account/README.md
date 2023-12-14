# AWS Security Hub Account

## Resources

| Name | Type |
|------|------|
| [aws_securityhub_account.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/securityhub_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_enable_controls"></a> [auto\_enable\_controls](#input\_auto\_enable\_controls) | Whether to automatically enable new controls when they are added to standards that are enabled. | `bool` | `true` | no |
| <a name="input_control_finding_generator"></a> [control\_finding\_generator](#input\_control\_finding\_generator) | Updates whether the calling account has consolidated control findings turned on. | `string` | `"SECURITY_CONTROL"` | no |
| <a name="input_enable_default_standards"></a> [enable\_default\_standards](#input\_enable\_default\_standards) | Whether to enable the security standards that Security Hub has designated as automatically enabled including: `AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_securityhub_account"></a> [securityhub\_account](#output\_securityhub\_account) | n/a |
