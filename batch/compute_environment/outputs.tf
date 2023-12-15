# --------------------------------------------------------------------------------
# AWS Batch Compute Environment
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_compute_environment
# --------------------------------------------------------------------------------

output "batch_compute_environment" {
  value = aws_batch_compute_environment.this
}
