# Amazo EC2 Key Pair
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair

output "key_pair" {
  value = aws_key_pair.this
}
