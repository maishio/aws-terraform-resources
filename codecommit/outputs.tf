# AWS CodeCommit
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codecommit_repository

output "codecommit_repository" {
  value = aws_codecommit_repository.this
}
