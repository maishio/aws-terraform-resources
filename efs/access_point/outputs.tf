# --------------------------------------------------------------------------------
# Amazon EFS Access Point
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/efs_access_point
# --------------------------------------------------------------------------------

output "efs_access_point" {
  value = aws_efs_access_point.this
}
