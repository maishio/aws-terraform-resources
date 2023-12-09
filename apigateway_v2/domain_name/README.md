# Amazon API Gateway V2 Domain Name

## Resources

| Name | Type |
|------|------|
| [aws_apigatewayv2_domain_name.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/apigatewayv2_domain_name) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | ARN of an AWS-managed certificate that will be used by the endpoint for the domain name. | `string` | n/a | yes |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain name. | `string` | n/a | yes |
| <a name="input_endpoint_type"></a> [endpoint\_type](#input\_endpoint\_type) | Endpoint type. Valid values: `REGIONAL`. | `string` | `"REGIONAL"` | no |
| <a name="input_security_policy"></a> [security\_policy](#input\_security\_policy) | TLS version of the security policy for the domain name. Valid values: `TLS_1_2`. | `string` | `"TLS_1_2"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_apigatewayv2_domain_name"></a> [apigatewayv2\_domain\_name](#output\_apigatewayv2\_domain\_name) | Amazon API Gateway V2 Domain Name resource. |
