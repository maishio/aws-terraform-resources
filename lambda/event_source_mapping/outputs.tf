# --------------------------------------------------------------------------------
# AWS Lambda Event Source Mapping
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping
# --------------------------------------------------------------------------------

output "lambda_event_source_mapping" {
  value = aws_lambda_event_source_mapping.this
}
