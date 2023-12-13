# Amazon API Gateway Method Response

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_method_response.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_response) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`). | `string` | n/a | yes |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | API resource ID. | `string` | n/a | yes |
| <a name="input_response_models"></a> [response\_models](#input\_response\_models) | Map of the API models used for the response's content type. | `map(string)` | `{}` | no |
| <a name="input_response_parameters"></a> [response\_parameters](#input\_response\_parameters) | Map of response parameters that can be sent to the caller. | `map(string)` | `{}` | no |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | ID of the associated REST API. | `string` | n/a | yes |
| <a name="input_status_code"></a> [status\_code](#input\_status\_code) | HTTP status code. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_method_response"></a> [api\_gateway\_method\_response](#output\_api\_gateway\_method\_response) | n/a |
