# Amazon API Gateway Resource

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_resource.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | ID of the parent API resource. | `string` | n/a | yes |
| <a name="input_path_part"></a> [path\_part](#input\_path\_part) | Last path segment of this API resource. | `string` | n/a | yes |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | ID of the associated REST API. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_resource"></a> [api\_gateway\_resource](#output\_api\_gateway\_resource) | n/a |
