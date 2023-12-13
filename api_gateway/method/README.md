# Amazon API Gateway Method

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_method.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_key_required"></a> [api\_key\_required](#input\_api\_key\_required) | Specify if the method requires an API key. | `bool` | `false` | no |
| <a name="input_authorization"></a> [authorization](#input\_authorization) | Type of authorization used for the method (`NONE`, `CUSTOM`, `AWS_IAM`, `COGNITO_USER_POOLS`). | `string` | `"NONE"` | no |
| <a name="input_authorization_scopes"></a> [authorization\_scopes](#input\_authorization\_scopes) | Authorization scopes used when the authorization is `COGNITO_USER_POOLS`. | `list(string)` | `[]` | no |
| <a name="input_http_method"></a> [http\_method](#input\_http\_method) | HTTP Method (`GET`, `POST`, `PUT`, `DELETE`, `HEAD`, `OPTIONS`, `ANY`). | `string` | n/a | yes |
| <a name="input_request_models"></a> [request\_models](#input\_request\_models) | Map of the API models used for the request's content type. | `map(string)` | `{}` | no |
| <a name="input_request_parameters"></a> [request\_parameters](#input\_request\_parameters) | Map of request parameters (from the path, query string and headers) that should be passed to the integration. | `map(string)` | `{}` | no |
| <a name="input_resource_id"></a> [resource\_id](#input\_resource\_id) | API resource ID. | `string` | n/a | yes |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | ID of the associated REST API. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_method"></a> [api\_gateway\_method](#output\_api\_gateway\_method) | n/a |
<!-- END_TF_DOCS -->
