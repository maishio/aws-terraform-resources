# Amazon API Gateway Method Settings

## Resources

| Name | Type |
|------|------|
| [aws_api_gateway_method_settings.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_method_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cache_data_encrypted"></a> [cache\_data\_encrypted](#input\_cache\_data\_encrypted) | Whether the cached responses are encrypted. | `bool` | `null` | no |
| <a name="input_cache_ttl_in_seconds"></a> [cache\_ttl\_in\_seconds](#input\_cache\_ttl\_in\_seconds) | Time to live (TTL), in seconds, for cached responses. | `number` | `null` | no |
| <a name="input_caching_enabled"></a> [caching\_enabled](#input\_caching\_enabled) | Whether responses should be cached and returned for requests. | `bool` | `false` | no |
| <a name="input_data_trace_enabled"></a> [data\_trace\_enabled](#input\_data\_trace\_enabled) | Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs. | `bool` | `false` | no |
| <a name="input_logging_level"></a> [logging\_level](#input\_logging\_level) | Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. | `string` | `null` | no |
| <a name="input_method_path"></a> [method\_path](#input\_method\_path) | Method path defined as `{resource_path}/{http_method}` for an individual method override, or `*/*` for overriding all methods in the stage. | `string` | n/a | yes |
| <a name="input_metrics_enabled"></a> [metrics\_enabled](#input\_metrics\_enabled) | Whether Amazon CloudWatch metrics are enabled for this method. | `bool` | `false` | no |
| <a name="input_require_authorization_for_cache_control"></a> [require\_authorization\_for\_cache\_control](#input\_require\_authorization\_for\_cache\_control) | Whether authorization is required for a cache invalidation request. | `bool` | `true` | no |
| <a name="input_rest_api_id"></a> [rest\_api\_id](#input\_rest\_api\_id) | D of the REST API. | `string` | n/a | yes |
| <a name="input_stage_name"></a> [stage\_name](#input\_stage\_name) | Name of the stage. | `string` | n/a | yes |
| <a name="input_throttling_burst_limit"></a> [throttling\_burst\_limit](#input\_throttling\_burst\_limit) | Throttling burst limit. | `number` | `-1` | no |
| <a name="input_throttling_rate_limit"></a> [throttling\_rate\_limit](#input\_throttling\_rate\_limit) | Throttling rate limit. | `number` | `-1` | no |
| <a name="input_unauthorized_cache_control_header_strategy"></a> [unauthorized\_cache\_control\_header\_strategy](#input\_unauthorized\_cache\_control\_header\_strategy) | How to handle unauthorized requests for cache invalidation. | `string` | `"SUCCEED_WITH_RESPONSE_HEADER"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_api_gateway_method_settings"></a> [api\_gateway\_method\_settings](#output\_api\_gateway\_method\_settings) | n/a |
<!-- END_TF_DOCS -->
