# Amazon API Gateway VPC Link

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_vpc_link.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_vpc_link) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the VPC link. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name used to label and identify the VPC link. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_target_arns"></a> [target\_arns](#input\_target\_arns) | List of network load balancer arns in the VPC targeted by the VPC link. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_vpc_link"></a> [api\_gateway\_vpc\_link](#output\_api\_gateway\_vpc\_link) | n/a |
