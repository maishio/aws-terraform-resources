# Amazon VPC Endpoint Terraform Resource

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | >= 1.3.0 |

## Providers

| Name | Version   |
|------|-----------|
| aws  | ~> 4.57.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_vpc_endpoint.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_endpoint_name"></a> [endpoint\_name](#input\_endpoint\_name) | The name of the VPC endpoint. | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | The path to the policy document. | `string` | `null` | no |
| <a name="input_private_dns_enabled"></a> [private\_dns\_enabled](#input\_private\_dns\_enabled) | Whether or not to associate a private hosted zone with the specified VPC. | `bool` | `false` | no |
| <a name="input_route_table_ids"></a> [route\_table\_ids](#input\_route\_table\_ids) | One or more route table IDs to associate with the endpoint. | `list(string)` | `[]` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | One or more security group IDs to associate with the network interface. | `list(string)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The service name. | `string` | n/a | yes |
| <a name="input_subnet_ids"></a> [subnet\_ids](#input\_subnet\_ids) | One or more subnet IDs to associate with the endpoint. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vars"></a> [vars](#input\_vars) | The variables to use in the policy document. | `map(string)` | `{}` | no |
| <a name="input_vpc_endpoint_type"></a> [vpc\_endpoint\_type](#input\_vpc\_endpoint\_type) | The type of VPC endpoint. Valid values are Gateway, Interface, and GatewayLoadBalancer. Defaults to Gateway. | `string` | `"Gateway"` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC in which the endpoint will be used. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpc_endpoint"></a> [vpc\_endpoint](#output\_vpc\_endpoint) | n/a |

## Usage

```hcl

## Create a security group for the endpoint

module "endpoint_sg" {
  source              = "git::https://github.com/maishio/terraform-aws-resources.git//security_group"
  security_group_name = "${var.tags.service}-${var.tags.env}-endpoint-sg"
  tags                = var.tags
  vpc_id              = module.vpc.vpc.id
  ingress_rule = {
    0 = {
      from_port   = 443,
      to_port     = 443,
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

## Create an SSM endpoint within the private subnet

module "ssm_endpoint" {
  source             = "git::https://github.com/maishio/terraform-aws-resources.git//endpoint"
  endpoint_name      = "${var.tags.service}-${var.tags.env}-ssm-endpoint"
  path               = "${path.module}/files/template/endpoint_policy.json.tpl"
  security_group_ids = [module.endpoint_sg.security_group.id]
  service_name       = "com.amazonaws.${var.region.id}.ssm"
  subnet_ids         = [module.pri_subnet.subnet.*.id]
  tags               = var.tags
  vpc_endpoint_type  = "Interface"
  vpc_id             = module.vpc.vpc.id
}
```
