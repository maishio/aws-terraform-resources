# Amazon API Gateway V2 API

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_api.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_api) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_key_selection_expression"></a> [api\_key\_selection\_expression](#input\_api\_key\_selection\_expression) | API key selection expression. | `string` | `"$request.header.x-api-key"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the API. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the API. | `string` | n/a | yes |
| <a name="input_protocol_type"></a> [protocol\_type](#input\_protocol\_type) | API protocol. Valid values: `HTTP`, `WEBSOCKET`. | `string` | n/a | yes |
| <a name="input_route_selection_expression"></a> [route\_selection\_expression](#input\_route\_selection\_expression) | Route selection expression for the API. | `string` | `"$request.method $request.path"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the API. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_api"></a> [apigatewayv2\_api](#output\_apigatewayv2\_api) | Amazon API Gateway V2 API resource. |
