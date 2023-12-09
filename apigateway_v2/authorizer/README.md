# Amazon API Gateway V2 Authorizer

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_authorizer.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_authorizer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | API identifier. | `string` | n/a | yes |
| <a name="authorizer_payload_format_version"></a> [authorizer\_payload\_format\_version](#input\_authorizer\_payload\_format\_version) | Format of the payload sent to an HTTP API Lambda authorizer. | `string` | `null` | no |
| <a name="input_authorizer_result_ttl_in_seconds"></a> [authorizer\_result\_ttl\_in\_seconds](#input\_authorizer\_result\_ttl\_in\_seconds) | TTL for cached authorizer results, in seconds. | `number` | `300` | no |
| <a name="input_authorizer_type"></a> [authorizer\_type](#input\_authorizer\_type) | Authorizer type. Valid values: `JWT`, `REQUEST`. | `string` | n/a | yes |
| <a name="authorizer_uri"></a> [authorizer\_uri](#input\_authorizer\_uri) | Authorizer's Uniform Resource Identifier (URI). | `string` | `null` | no |
| <a name="input_enable_simple_responses"></a> [enable\_simple\_responses](#input\_enable\_simple\_responses) | Whether a Lambda authorizer returns a response in a simple format. | `bool` | `null` | no |
| <a name="input_identity_sources"></a> [identity\_sources](#input\_identity\_sources) | Identity sources for which authorization is requested. | `list(string)` | `[]` | no |
| <a name="input_jwt_configuration"></a> [jwt\_configuration](#input\_jwt\_configuration) | Configuration of a JWT authorizer. | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the authorizer. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_authorizer"></a> [apigatewayv2\_authorizer](#output\_apigatewayv2\_authorizer) | n/a |
