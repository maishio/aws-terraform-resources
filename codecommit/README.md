# Amazon CodeCommit Terraform Resource

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
| [aws_codecommit_repository.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_branch"></a> [default\_branch](#input\_default\_branch) | Default branch of the repository. The branch specified here needs to exist. | `string` | `"master"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the repository. | `string` | `null` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | Name for the repository. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_codecommit_repository"></a> [codecommit\_repository](#output\_codecommit\_repository) | n/a |

## Usage

```hcl
module "codecommit" {
  source          = "git::https://github.com/mishio/terraform-aws-resources.git//codecommit"
  default_branch  = "main"
  description     = "Example repository"
  repository_name = "${var.tags.service}-${var.tags.env}-repo"
  tags            = var.tags
}
```
