# --------------------------------------------------------------------------------
# Amazon EC2 Key Pair
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair
# --------------------------------------------------------------------------------

#resource "tls_private_key" "this" {
#  algorithm = "RSA"
#  rsa_bits  = 4096
#}

#resource "local_file" "private" {
#  filename = "${path.module}/private_key.pem"
#  content  = tls_private_key.this.private_key_pem
#}

#resource "local_file" "public" {
#  filename = "${path.module}/public_key.pub"
#  content  = tls_private_key.this.public_key_openssh
#}

resource "aws_key_pair" "this" {
  key_name   = var.key_name
  public_key = var.public_key
  tags       = merge(var.tags, { "Name" = var.key_name })
}
