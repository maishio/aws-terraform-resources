# Amazon API Gateway V2 Deployment

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_deployment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_deployment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | API identifier. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description for the deployment resource. | `string` | `null` | no |
| <a name="input_triggers"></a> [triggers](#input\_triggers) | Map of arbitrary keys and values that, when changed, will trigger a redeployment. | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_deployment"></a> [apigatewayv2\_deployment](#output\_apigatewayv2\_deployment) | Amazon API Gateway V2 Deployment resource. |
