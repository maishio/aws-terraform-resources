# Amazon EC2 Key Pair

## Resources

| Name | Type |
|------|------|
| [aws_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | The name for the key pair. | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | The public key material. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_pair"></a> [key\_pair](#output\_key\_pair) | n/a |

## Usage

Creating a Terraform file to generate public and private keys.
```hcl
resource "tls_private_key" "this" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private" {
  filename = "${path.module}/private_key.pem"
  content  = tls_private_key.this.private_key_pem
}

resource "local_file" "public" {
  filename = "${path.module}/public_key.pub"
  content  = tls_private_key.this.public_key_openssh
}
```

Run terraform init, terraform plan, and terraform apply in the directory containing the created terraform files.
```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Create a key_pair module using the generated public key file.
```hcl
module "key_pair" {
  source     = "git::https://github.com/maishio/terraform-aws-resources.git//key_pair"
  key_name   = "${var.tags.service}-${var.tags.env}-key"
  public_key = file("${path.module}/public_key.pub")
  tags       = var.tags
}
