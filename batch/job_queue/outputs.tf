# --------------------------------------------------------------------------------
# AWS Batch Job Queue
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/batch_job_queue
# --------------------------------------------------------------------------------

output "batch_job_queue" {
  value = aws_batch_job_queue.this
}
