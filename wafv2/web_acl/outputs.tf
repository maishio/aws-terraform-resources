# --------------------------------------------------------------------------------
# AWS WAFv2 Web ACL
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl
# --------------------------------------------------------------------------------

output "wafv2_web_acl" {
  value = aws_wafv2_web_acl.this
}
