# Amazon API Gateway V2 Route

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_route.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_route) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | API identifier. | `string` | n/a | yes |
| <a name="input_api_key_required"></a> [api\_key\_required](#input\_api\_key\_required) | Boolean whether an API key is required for the route. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_authorization_scopes"></a> [authorization\_scopes](#input\_authorization\_scopes) | Authorization scopes supported by this route. | `list(string)` | `[]` | no |
| <a name="input_authorization_type"></a> [authorization\_type](#input\_authorization\_type) | Authorization type for the route. | `string` | `"NONE"` | no |
| <a name="input_authorizer_id"></a> [authorizer\_id](#input\_authorizer\_id) | dentifier of the aws\_apigatewayv2\_authorizer resource to be associated with this route. | `string` | `null` | no |
| <a name="input_request_models"></a> [request\_models](#input\_request\_models) | Request models for the route. | `map(string)` | `{}` | no |
| <a name="input_route_key"></a> [route\_key](#input\_route\_key) | Route key for the route. | `string` | n/a | yes |
| <a name="input_target"></a> [target](#input\_target) | Target for the route. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_route"></a> [apigatewayv2\_route](#output\_apigatewayv2\_route) | Amazon API Gateway V2 Route resource. |
