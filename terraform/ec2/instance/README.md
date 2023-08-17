# Amazon EC2 Instance

## Resources

| Name | Type |
|------|------|
| [aws_eip.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association) | resource |
| [aws_instance.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami"></a> [ami](#input\_ami) | AMI to use for the instance. | `string` | `null` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | If true, the EC2 instance will have associated public IP address. | `bool` | `false` | no |
| <a name="input_create_eip"></a> [create\_eip](#input\_create\_eip) | Whether to create an Elastic IP (EIP) to attach to the instance. | `bool` | `false` | no |
| <a name="input_create_eip_association"></a> [create\_eip\_association](#input\_create\_eip\_association) | Whether to create an Elastic IP (EIP) Association to attach to the instance. | `bool` | `false` | no |
| <a name="input_delete_on_termination"></a> [delete\_on\_termination](#input\_delete\_on\_termination) | Whether the volume should be destroyed on instance termination. | `bool` | `true` | no |
| <a name="input_eip_name"></a> [eip\_name](#input\_eip\_name) | Elastic IP (EIP) name. | `string` | `null` | no |
| <a name="input_encrypted"></a> [encrypted](#input\_encrypted) | Whether to enable volume encryption. | `bool` | `false` | no |
| <a name="input_iam_instance_profile"></a> [iam\_instance\_profile](#input\_iam\_instance\_profile) | IAM Instance Profile to launch the instance with. | `string` | `null` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type to use for the instance. | `string` | n/a | yes |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | Key name of the Key Pair to use for the instance. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Instance name. | `string` | n/a | yes |
| <a name="input_private_ip"></a> [private\_ip](#input\_private\_ip) | Private IP address to associate with the instance in a VPC. | `string` | `null` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | VPC Subnet ID to launch in. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_volume_size"></a> [volume\_size](#input\_volume\_size) | The size of the volume in gigabytes. | `number` | `null` | no |
| <a name="input_volume_type"></a> [volume\_type](#input\_volume\_type) | Type of volume. Valid values are gp2, gp3, io1, io2, st1, sc1, standard. | `string` | `"gp3"` | no |
| <a name="input_vpc"></a> [vpc](#input\_vpc) | Whether the Elastic IP (EIP) should be in the VPC or not. | `bool` | `true` | no |
| <a name="input_vpc_security_group_ids"></a> [vpc\_security\_group\_ids](#input\_vpc\_security\_group\_ids) | A list of security group IDs to associate with. | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_instance"></a> [instance](#output\_instance) | n/a |

## Usage

```hcl

# AMI Data Source

data "aws_ami" "bastion" {
  most_recent = true
  owners      = ["self"]

  filter {
    name   = "tag:Name"
    values = ["${var.tags.service}-${var.tags.env}-bastion-ami-*"]
  }
}

# Bastion EC2 Instance Security Group

module "bastion_sg" {
  source              = "git::https://github.com/maishio/terraform-aws-resources.git//security_group"
  security_group_name = "${var.tags.service}-${var.tags.env}-bastion-sg"
  tags                = var.tags
  vpc_id              = var.vpc_id
}

# Bastion EC2 Instance Key Pair

module "bastion_key" {
  source     = "git::https://github.com/maishio/terraform-aws-resources.git//key_pair"
  key_name   = "${var.tags.service}-${var.tags.env}-bastion"
  public_key = file("${path.module}/files/keypair/${var.tags.service}-${var.tags.env}-bastion.pub")
  tags       = var.tags
}

# Bastion EC2 Instance Profile

module "bastion_iam" {
  source                      = "git::https://github.com/maishio/terraform-aws-resources.git//iam/complete"
  create_iam_instance_profile = true
  policies = [
    "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  ]
  profile_name  = "${var.tags.service}-${var.tags.env}-bastion-profile"
  role_name     = "${var.tags.service}-${var.tags.env}-bastion-role"
  role_path     = "${path.module}/files/template/default_iam_assume_role.json.tpl"
  role_vars = {
    SERVICE = "ec2.amazonaws.com"
  }
  tags = var.tags
}

# Bastion EC2 Instance

module "bastion" {
  source                 = "git::https://github.com/maishio/terraform-aws-resources.git//ec2"
  ami                    = data.aws_ami.bastion.id
  iam_instance_profile   = module.bastion_iam.iam_instance_profile[0].name
  instance_type          = "t3a.small"
  key_name               = module.bastion_key.key_pair.id
  name                   = "${var.tags.service}-${var.tags.env}-bastion"
  subnet_id              = var.subnet_id
  tags                   = var.tags
  vpc_security_group_ids = [module.bastion_sg.security_group.id]
  volume_size            = 20
}
```
