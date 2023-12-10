# --------------------------------------------------------------------------------
# Amazon S3 Object
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object
# --------------------------------------------------------------------------------

output "s3_object" {
  value = aws_s3_object.this
}
