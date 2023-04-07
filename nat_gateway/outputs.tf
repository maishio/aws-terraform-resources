# Amazon VPC NAT Gateway アウトプット定義
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway

output "nat_gateway" {
  value = aws_nat_gateway.this
}
