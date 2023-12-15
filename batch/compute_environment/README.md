# AWS Batch Compute Environment

## Resources

| Name | Type |
|------|------|
| [aws_batch_compute_environment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_compute_environment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allocation_strategy"></a> [allocation\_strategy](#input\_allocation\_strategy) | The allocation strategy to use for the compute resource in case not enough instances of the best fitting instance type can be allocated. | `string` | `"BEST_FIT"` | no |
| <a name="input_bid_percentage"></a> [bid\_percentage](#input\_bid\_percentage) | Integer of maximum percentage that a Spot Instance price can be when compared with the On-Demand price for that instance type before instances are launched. | `number` | `0` | no |
| <a name="input_compute_environment_name"></a> [compute\_environment\_name](#input\_compute\_environment\_name) | The name for your compute environment. | `string` | n/a | yes |
| <a name="input_compute_resources_tags"></a> [compute\_resources\_tags](#input\_compute\_resources\_tags) | Key-value pair tags to be applied to resources that are launched in the compute environment. | `map(string)` | `{}` | no |
| <a name="input_compute_resources_type"></a> [compute\_resources\_type](#input\_compute\_resources\_type) | The type of compute environment. | `string` | n/a | yes |
| <a name="input_desired_vcpus"></a> [desired\_vcpus](#input\_desired\_vcpus) | The desired number of EC2 vCPUS in the compute environment. | `number` | `0` | no |
| <a name="input_ec2_configuration"></a> [ec2\_configuration](#input\_ec2\_configuration) | Dynamic block for ec2\_configuration. | `list(any)` | `[]` | no |
| <a name="input_instance_role"></a> [instance\_role](#input\_instance\_role) | The Amazon ECS instance role applied to Amazon EC2 instances in a compute environment. | `string` | `null` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | A list of instance types that may be launched. | `list(string)` | `[]` | no |
| <a name="input_max_vcpus"></a> [max\_vcpus](#input\_max\_vcpus) | The maximum number of EC2 vCPUs that an environment can reach. | `number` | n/a | yes |
| <a name="input_min_vcpus"></a> [min\_vcpus](#input\_min\_vcpus) | The minimum number of EC2 vCPUs that an environment should maintain. | `number` | `0` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | A list of EC2 security group that are associated with instances launched in the compute environment. | `list(string)` | `[]` | no |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf. | `string` | n/a | yes |
| <a name="input_state"></a> [state](#input\_state) | The state of the compute environment. | `string` | `"ENABLED"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | A list of VPC subnets into which the compute resources are launched. | `list(string)` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value map of resource tags. | `map(string)` | `{}` | no |
| <a name="input_type"></a> [type](#input\_type) | The type of the compute environment. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_batch_compute_environment"></a> [batch\_compute\_environment](#output\_batch\_compute\_environment) | n/a |
