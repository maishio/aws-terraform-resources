# ELB (Elastic Load Balancing)

## Resources

| Name | Type |
|------|------|
| [aws_lb.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_listener_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |
| [aws_lb_target_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_logs"></a> [access\_logs](#input\_access\_logs) | A list of access\_logs objects for the dynamic block. | `list(map(string))` | `[]` | no |
| <a name="input_action_type"></a> [action\_type](#input\_action\_type) | Type of routing action. | `string` | `"forward"` | no |
| <a name="input_alb_name"></a> [alb\_name](#input\_alb\_name) | Name of the load balancer. | `string` | `null` | no |
| <a name="input_certificate_arn"></a> [certificate\_arn](#input\_certificate\_arn) | ARN of the default SSL server certificate. | `string` | `null` | no |
| <a name="input_create_lb_listener_rule"></a> [create\_lb\_listener\_rule](#input\_create\_lb\_listener\_rule) | Whether to create an ELB listener rule. | `bool` | `false` | no |
| <a name="input_default_action"></a> [default\_action](#input\_default\_action) | A list of default action objects for the dynamic block. | `any` | `[]` | no |
| <a name="input_deregistration_delay"></a> [deregistration\_delay](#input\_deregistration\_delay) | The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. | `number` | `300` | no |
| <a name="input_drop_invalid_header_fields"></a> [drop\_invalid\_header\_fields](#input\_drop\_invalid\_header\_fields) | Indicates whether HTTP headers with invalid header fields are removed by the load balancer (true) or routed to targets (false). Defaults to `false`. | `bool` | `false` | no |
| <a name="input_enable_cross_zone_load_balancing"></a> [enable\_cross\_zone\_load\_balancing](#input\_enable\_cross\_zone\_load\_balancing) | Indicates whether cross-zone load balancing is enabled. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_enable_deletion_protection"></a> [enable\_deletion\_protection](#input\_enable\_deletion\_protection) | Indicates whether deletion protection is enabled. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_enable_http2"></a> [enable\_http2](#input\_enable\_http2) | Indicates whether HTTP/2 is enabled. Defaults to `true`. | `bool` | `true` | no |
| <a name="input_health_check_enabled"></a> [health\_check\_enabled](#input\_health\_check\_enabled) | Whether health checks are enabled. Defaults to `true`. | `bool` | `true` | no |
| <a name="input_health_check_healthy_threshold"></a> [health\_check\_healthy\_threshold](#input\_health\_check\_healthy\_threshold) | Number of consecutive health check successes required before considering a target healthy. Defaults to `3`. | `number` | `3` | no |
| <a name="input_health_check_interval"></a> [health\_check\_interval](#input\_health\_check\_interval) | Time between health checks. Defaults to `30`. | `number` | `30` | no |
| <a name="input_health_check_matcher"></a> [health\_check\_matcher](#input\_health\_check\_matcher) | Response codes to use when checking for a healthy responses from a target. | `string` | `null` | no |
| <a name="input_health_check_path"></a> [health\_check\_path](#input\_health\_check\_path) | Destination for the health check request. | `string` | `null` | no |
| <a name="input_health_check_port"></a> [health\_check\_port](#input\_health\_check\_port) | Port the load balancer uses when performing health checks on targets. | `string` | `"traffic-port"` | no |
| <a name="input_health_check_protocol"></a> [health\_check\_protocol](#input\_health\_check\_protocol) | Protocol the load balancer uses when performing health checks on targets. Defaults to `HTTP`. | `string` | `"HTTP"` | no |
| <a name="input_health_check_timeout"></a> [health\_check\_timeout](#input\_health\_check\_timeout) | Amount of time to wait when receiving a response from the health check, in seconds. Defaults to `5`. | `number` | `5` | no |
| <a name="input_health_check_unhealthy_threshold"></a> [health\_check\_unhealthy\_threshold](#input\_health\_check\_unhealthy\_threshold) | Number of consecutive health check failures required before considering a target unhealthy. Defaults to `3`. | `number` | `3` | no |
| <a name="input_idle_timeout"></a> [idle\_timeout](#input\_idle\_timeout) | The time in seconds that the connection is allowed to be idle. Defaults to `60`. | `number` | `60` | no |
| <a name="input_internal"></a> [internal](#input\_internal) | If true, the LB will be internal. | `bool` | `false` | no |
| <a name="input_ip_address_type"></a> [ip\_address\_type](#input\_ip\_address\_type) | Type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4`and `dualstack`. | `string` | `"ipv4"` | no |
| <a name="input_lambda_multi_value_headers_enabled"></a> [lambda\_multi\_value\_headers\_enabled](#input\_lambda\_multi\_value\_headers\_enabled) | Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. | `bool` | `false` | no |
| <a name="input_listener_port"></a> [listener\_port](#input\_listener\_port) | Port on which the load balancer is listening. | `string` | `null` | no |
| <a name="input_listener_protocol"></a> [listener\_protocol](#input\_listener\_protocol) | Protocol for connections from clients to the load balancer. | `string` | `null` | no |
| <a name="input_listener_rule_priority"></a> [listener\_rule\_priority](#input\_listener\_rule\_priority) | Priority for the rule between `1` and `50000`. | `number` | `null` | no |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | Type of load balancer. Defaults to `application`. | `string` | `"application"` | no |
| <a name="input_proxy_protocol_v2"></a> [proxy\_protocol\_v2](#input\_proxy\_protocol\_v2) | Whether to enable support for proxy protocol v2 on Network Load Balancers. Defaults to `false`. | `bool` | `false` | no |
| <a name="input_security_groups"></a> [security\_groups](#input\_security\_groups) | A list of security group IDs to assign to the LB. | `list(string)` | `[]` | no |
| <a name="input_slow_start"></a> [slow\_start](#input\_slow\_start) | Amount time for targets to warm up before the load balancer sends them a full share of requests. | `number` | `0` | no |
| <a name="input_ssl_policy"></a> [ssl\_policy](#input\_ssl\_policy) | Name of the SSL Policy for the listener. | `string` | `null` | no |
| <a name="input_stickiness_cookie_duration"></a> [stickiness\_cookie\_duration](#input\_stickiness\_cookie\_duration) | Time period, in seconds, during which requests from a client should be routed to the same target. Defaults to `86400`. | `number` | `86400` | no |
| <a name="input_stickiness_enabled"></a> [stickiness\_enabled](#input\_stickiness\_enabled) | Whether sticky sessions are enabled. | `bool` | `false` | no |
| <a name="input_stickiness_type"></a> [stickiness\_type](#input\_stickiness\_type) | Type of sticky sessions. | `string` | `"lb_cookie"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | A list of subnet IDs to attach to the LB. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_target_group_name"></a> [target\_group\_name](#input\_target\_group\_name) | Name of the target group. | `string` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | Port on which targets receive traffic, unless overridden when registering a specific target. | `number` | `null` | no |
| <a name="input_target_protocol"></a> [target\_protocol](#input\_target\_protocol) | Protocol to use for routing traffic to the targets. | `string` | `null` | no |
| <a name="input_target_type"></a> [target\_type](#input\_target\_type) | Type of target that you must specify when registering targets with this target group. | `string` | `"instance"` | no |
| <a name="input_values"></a> [values](#input\_values) | Contains a single values item which is a list of path patterns to match against the request URL. | `list(any)` | `[]` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elb"></a> [elb](#output\_elb) | n/a |
| <a name="output_elb_listener"></a> [elb\_listener](#output\_elb\_listener) | n/a |
| <a name="output_elb_target_group"></a> [elb\_target\_group](#output\_elb\_target\_group) | n/a |
