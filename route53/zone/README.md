# Amazon Route53 Hosted Zone

## Resources

| Name | Type |
|------|------|
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Comment for the hosted zone. Defaults to `Managed by Terraform`. | `string` | `"Managed by Terraform"` | no |
| <a name="input_delegation_set_id"></a> [delegation\_set\_id](#input\_delegation\_set\_id) | ID of the reusable delegation set whose NS records you want to assign to the hosted zone. | `string` | `null` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Whether to destroy all records in the zone when destroying the zone. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the hosted zone. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | A list of VPC objects for the dynamic block. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_route53_zone"></a> [route53\_zone](#output\_route53\_zone) | Amazon Route53 Hosted Zone resource. |
