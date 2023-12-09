# Amazon GuardDuty

## Resources

| Name | Type |
|------|------|
| [aws_guardduty_detector.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable"></a> [enable](#input\_enable) | Whether to enable GuardDuty Detector. Defaults to `true`. | `bool` | `true` | no |
| <a name="input_finding_publishing_frequency"></a> [finding\_publishing\_frequency](#input\_finding\_publishing\_frequency) | Frequency of publishing the finding. The possible values are `FIFTEEN_MINUTES`, `ONE_HOUR`, `SIX_HOURS`. Defaults to `SIX_HOURS`. | `string` | `"SIX_HOURS"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_guardduty_detector"></a> [guardduty\_detector](#output\_guardduty\_detector) | n/a |

## Usage

```hcl
module "guardduty" {
  source = "git::https://github.com/maishio/terraform-aws-resources.git//guardduty"
  tags   = var.tags
}
```
