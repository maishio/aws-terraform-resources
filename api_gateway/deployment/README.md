# Amazon API Gateway Deployment

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_deployment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the deployment. | `string` | `null` | no |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | REST API identifier. | `string` | n/a | yes |
| <a name="input_stage_description"></a> [stage\_description](#input\_stage\_description) | Description to set on the stage managed by the `stage_name` argument. | `string` | `null` | no |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | Name of the stage to create with this deployment. | `string` | `null` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | Map of arbitrary keys and values that, when changed, will trigger a redeployment. | `map(any)` | `{}` | no |
| <a name="input_variables"></a> [variables](#input\_variables) | Map to set on the stage managed by the `stage_name` argument. | `map(any)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_deployment"></a> [api\_gateway\_deployment](#output\_api\_gateway\_deployment) | n/a |
