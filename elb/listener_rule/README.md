# ELB (Elastic Load Balancing) Listener Rule Terraform Resource

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.3.0 |

## Providers

| Name | Version   |
|------|-----------|
| aws  | ~> 4.57.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb_listener_rule.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_listener_arn"></a> [listener\_arn](#input\_listener\_arn) | ARN of the listener to which to attach the rule. | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | Priority for the rule between `1` and `50000`. | `number` | `null` | no |
| <a name="input_target_group_arn"></a> [target\_group\_arn](#input\_target\_group\_arn) | ARN of the target group. | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of routing action. | `string` | n/a | yes |
| <a name="input_values"></a> [values](#input\_values) | Contains a single values item which is a list of path patterns to match against the request URL. | `list(any)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_elb_listener_rule"></a> [elb\_listener\_rule](#output\_elb\_listener\_rule) | n/a |
