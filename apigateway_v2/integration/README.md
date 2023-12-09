# Amazon API Gateway V2 Integration

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_integration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_integration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_id"></a> [api\_id](#input\_api\_id) | API identifier. | `string` | n/a | yes |
| <a name="input_connection_type"></a> [connection\_type](#input\_connection\_type) | Type of the network connection to the integration endpoint. | `string` | `"INTERNET"` | no |
| <a name="input_credentials_arn"></a> [credentials\_arn](#input\_credentials\_arn) | Credentials required for the integration, if any. | `string` | `null` | no |
| <a name="input_integration_method"></a> [integration\_method](#input\_integration\_method) | Integration's HTTP method. Must be specified if `integration_type` is not `MOCK`. | `string` | `null` | no |
| <a name="input_integration_subtype"></a> [integration\_subtype](#input\_integration\_subtype) | AWS service action to invoke. Supported only for HTTP APIs when `integration_type` is `AWS_PROXY`. | `string` | `null` | no |
| <a name="input_integration_type"></a> [integration\_type](#input\_integration\_type) | Integration type of an integration. | `string` | n/a | yes |
| <a name="input_integration_uri"></a> [integration\_uri](#input\_integration\_uri) | URI of the Lambda function for a Lambda proxy integration, when `integration_type` is `AWS_PROXY`. | `string` | `null` | no |
| <a name="input_payload_format_version"></a> [payload\_format\_version](#input\_payload\_format\_version) | The format of the payload sent to an integration. Valid values: `1.0`, `2.0` | `string` | `"1.0"` | no |
| <a name="input_request_parameters"></a> [request\_parameters](#input\_request\_parameters) | For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend. | `map(string)` | `{}` | no |
| <a name="input_request_templates"></a> [request\_templates](#input\_request\_templates) | Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. | `map(string)` | `{}` | no |
| <a name="input_timeout_milliseconds"></a> [timeout\_milliseconds](#input\_timeout\_milliseconds) | Custom timeout between 50 and 29,000 milliseconds for WebSocket APIs and between 50 and 30,000 milliseconds for HTTP APIs. | `number` | `30000` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_integration"></a> [apigatewayv2\_integration](#output\_apigatewayv2\_integration) | n/a |
