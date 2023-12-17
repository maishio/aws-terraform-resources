# --------------------------------------------------------------------------------
# AWS Glue Job
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/glue_job
# --------------------------------------------------------------------------------

output "glue_job" {
  value = aws_glue_job.this
}
