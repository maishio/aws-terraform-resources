# AWS Secrets Manager Secret Version

## Resources

| Name | Type |
|------|------|
| [aws_secretsmanager_secret_version.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/secretsmanager_secret_version) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_secret_id"></a> [secret\_id](#input\_secret\_id) | Specifies the secret to which you want to add a new version. | `string` | n/a | yes |
| <a name="input_secret_string"></a> [secret\_string](#input\_secret\_string) | Specifies text data that you want to encrypt and store in this version of the secret. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_secretsmanager_secret"></a> [secretsmanager\_secret](#output\_secretsmanager\_secret) | n/a |
