# Amazon API Gateway Integration

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_integration.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_integration) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cache_key_parameters"></a> [cache\_key\_parameters](#input\_cache\_key\_parameters) | List of cache key parameters for the integration. | `list(string)` | `[]` | no |
| <a name="input_connection_id"></a> [connection\_id](#input\_connection\_id) | ID of the VpcLink used for the integration. | `string` | `null` | no |
| <a name="input_connection_type"></a> [connection\_type](#input\_connection\_type) | Integration input's connectionType. | `string` | `"INTERNET"` | no |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTION`, `ANY`) when calling the associated resource. | `string` | `null` | no |
| <a name="input_integration_http_method"></a> [integration\_http\_method](#input\_integration\_http\_method) | Integration HTTP method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONs`, `ANY`, `PATCH`) specifying how API Gateway will interact with the back end. | `string` | `null` | no |
| <a name="input_passthrough_behavior"></a> [passthrough\_behavior](#input\_passthrough\_behavior) | Integration passthrough behavior (`WHEN_NO_MATCH`, `WHEN_NO_TEMPLATES`, `NEVER`). | `string` | `null` | no |
| <a name="input_request_parameters"></a> [request\_parameters](#input\_request\_parameters) | Map of request query string parameters and headers that should be passed to the backend responder. | `map(string)` | `{}` | no |
| <a name="input_request_templates"></a> [request\_templates](#input\_request\_templates) | Map of the integration's request templates. | `map(string)` | `{}` | no |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | API resource ID. | `string` | n/a | yes |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | ID of the associated REST API. | `string` | n/a | yes |
| <a name="input_timeout_milliseconds"></a> [timeout\_milliseconds](#input\_timeout\_milliseconds) | Custom timeout between 50 and 29,000 milliseconds. | `number` | `29000` | no |
| <a name="input_type"></a> [type](#input\_type) | Integration input's type. | `string` | n/a | yes |
| <a name="input_uri"></a> [uri](#input\_uri) | Input's URI. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_integration"></a> [api\_gateway\_integration](#output\_api\_gateway\_integration) | n/a |
