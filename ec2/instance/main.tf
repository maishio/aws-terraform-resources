# --------------------------------------------------------------------------------
# Amazon EC2 Instance
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
# --------------------------------------------------------------------------------

resource "aws_instance" "this" {
  ami                         = var.ami
  associate_public_ip_address = var.associate_public_ip_address
  iam_instance_profile        = var.iam_instance_profile
  instance_type               = var.instance_type
  key_name                    = var.key_name
  private_ip                  = var.private_ip
  subnet_id                   = var.subnet_id
  tags                        = merge(var.tags, { "Name" = var.name })
  vpc_security_group_ids      = var.vpc_security_group_ids

  root_block_device {
    delete_on_termination = var.delete_on_termination
    encrypted             = var.encrypted
    volume_size           = var.volume_size
    volume_type           = var.volume_type
  }
}

# Amazon VPC Elastic IP
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip

resource "aws_eip" "this" {
  count = var.create_eip ? 1 : 0
  tags  = merge(var.tags, { "Name" = var.eip_name })
  vpc   = var.vpc
}

# Amazon VPC Elastic IP Association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip_association

resource "aws_eip_association" "this" {
  count         = var.create_eip_association ? 1 : 0
  instance_id   = aws_instance.this.id
  allocation_id = aws_eip.this[count.index].id
}
