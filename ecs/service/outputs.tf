# --------------------------------------------------------------------------------
# Amazon ECS Service
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service
# --------------------------------------------------------------------------------

output "ecs_service" {
  value = aws_ecs_service.this
}
