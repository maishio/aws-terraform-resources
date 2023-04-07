# Amazon VPC Endpoint
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc_endpoint

output "vpc_endpoint" {
  value = aws_vpc_endpoint.this
}
