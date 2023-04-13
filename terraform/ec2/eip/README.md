# Amazon EC2 Elastic IP Terraform Resource

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
| [aws_eip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name of the Elastic IP. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | Boolean if the EIP is in a VPC or not. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_eip"></a> [eip](#output\_eip) | n/a |

## Usage

```hcl
module "elastic_ip" {
  source = "git::https://github.com/maishio/terraform-aws-resources.git//vpc"
  name   = "${var.tags.alias}-${var.tags.env}-eip"
  tags   = var.tags
  vpc    = true
}
```
