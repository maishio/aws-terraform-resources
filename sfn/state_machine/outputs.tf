# --------------------------------------------------------------------------------
# AWS Step Functions State Machine
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sfn_state_machine
# --------------------------------------------------------------------------------

output "sfn_state_machine" {
  value = aws_sfn_state_machine.this
}
