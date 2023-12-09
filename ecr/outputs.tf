# --------------------------------------------------------------------------------
# Amazon ECR　Repository
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecr_repository
# --------------------------------------------------------------------------------

output "ecr_repository" {
  value = aws_ecr_repository.this
}
