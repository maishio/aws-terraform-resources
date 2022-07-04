# --------------------------------------------------------------------------------
# Amazon ECS on AWS Fargate 構築 Terraform テンプレート アウトプット定義
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# Amazon ECS Cluster output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster
# --------------------------------------------------------------------------------

output "ecs_cluster" {
  value = aws_ecs_cluster.this
}

# --------------------------------------------------------------------------------
# Amazon ECS Service output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service
# --------------------------------------------------------------------------------

output "ecs_service" {
  value = aws_ecs_service.this
}

# --------------------------------------------------------------------------------
# Amazon ECS Task Definition output
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition
# --------------------------------------------------------------------------------

output "ecs_task_definition" {
  value = aws_ecs_task_definition.this
}
