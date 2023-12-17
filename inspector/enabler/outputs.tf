# --------------------------------------------------------------------------------
# Amazon Inspector Enabler
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/inspector2_enabler
# --------------------------------------------------------------------------------

output "inspector2_enabler" {
  value = aws_inspector2_enabler.this
}
