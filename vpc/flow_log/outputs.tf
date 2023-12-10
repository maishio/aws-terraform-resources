# --------------------------------------------------------------------------------
# Amazon VPC Flow Log
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/flow_log
# --------------------------------------------------------------------------------

output "flow_log" {
  value = aws_flow_log.this
}
