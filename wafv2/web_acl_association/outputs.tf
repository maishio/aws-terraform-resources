# --------------------------------------------------------------------------------
# AWS WAFv2 Web ACL Association
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_association
# --------------------------------------------------------------------------------

output "wafv2_web_acl_association" {
  value = aws_wafv2_web_acl_association.this
}
