# --------------------------------------------------------------------------------
# AWS Batch Job Definition
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_definition
# --------------------------------------------------------------------------------

output "batch_job_definition" {
  value = aws_batch_job_definition.this
}
