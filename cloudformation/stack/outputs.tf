# --------------------------------------------------------------------------------
# AWS CloudFormation Stack
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudformation_stack
# --------------------------------------------------------------------------------

output "cloudformation_stack" {
  value = aws_cloudformation_stack.this
}
