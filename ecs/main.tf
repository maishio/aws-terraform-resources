# --------------------------------------------------------------------------------
# Amazon ECS on AWS Fargate 構築 Terraform テンプレート リソース定義
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# Amazon CloudWatch Log Group resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group
# --------------------------------------------------------------------------------

resource "aws_cloudwatch_log_group" "this" {
  kms_key_id        = var.kms_key_id
  name              = var.log_group_name
  retention_in_days = var.retention_in_days
  tags              = merge(var.tags, { "Name" = var.log_group_name })
}

# --------------------------------------------------------------------------------
# Amazon ECS Cluster resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster
# --------------------------------------------------------------------------------

resource "aws_ecs_cluster" "this" {
  name = var.ecs_cluster_name
  tags = merge(var.tags, { "Name" = var.ecs_cluster_name })

  setting {
    name  = var.setting_name
    value = var.setting_value
  }
}

# --------------------------------------------------------------------------------
# Amazon ECS Cluster Capacity Providers resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers
# --------------------------------------------------------------------------------

resource "aws_ecs_cluster_capacity_providers" "this" {
  cluster_name       = aws_ecs_cluster.this.name
  capacity_providers = var.capacity_providers

  dynamic "default_capacity_provider_strategy" {
    for_each = var.default_capacity_provider_strategy
    content {
      base              = default_capacity_provider_strategy.value.base
      capacity_provider = default_capacity_provider_strategy.value.capacity_provider
      weight            = default_capacity_provider_strategy.value.weight
    }
  }
}

# --------------------------------------------------------------------------------
# Amazon ECS Service resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service
# --------------------------------------------------------------------------------

resource "aws_ecs_service" "this" {
  cluster                           = aws_ecs_cluster.this.id
  desired_count                     = var.desired_count
  health_check_grace_period_seconds = var.health_check_grace_period_seconds
  launch_type                       = var.launch_type
  name                              = var.ecs_service_name
  tags                              = merge(var.tags, { "Name" = var.ecs_service_name })
  task_definition                   = "${aws_ecs_task_definition.this.family}:${max(aws_ecs_task_definition.this.revision, data.aws_ecs_task_definition.this.revision)}"

  dynamic "capacity_provider_strategy" {
    for_each = var.capacity_provider_strategy
    content {
      base              = capacity_provider_strategy.value.base
      capacity_provider = capacity_provider_strategy.value.capacity_provider
      weight            = capacity_provider_strategy.value.weight
    }
  }

  deployment_controller {
    type = var.deployment_controller_type
  }

  dynamic "load_balancer" {
    for_each = var.load_balancer
    content {
      target_group_arn = load_balancer.value.target_group_arn
      container_name   = load_balancer.value.container_name
      container_port   = load_balancer.value.container_port
    }
  }

  network_configuration {
    assign_public_ip = var.network_configuration_assign_public_ip
    security_groups  = var.network_configuration_security_groups
    subnets          = var.network_configuration_subnets
  }

  lifecycle {
    ignore_changes = [
      desired_count,
      load_balancer,
      task_definition,
    ]
  }
}

# --------------------------------------------------------------------------------
# Amazon ECS Task Definition resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition
# --------------------------------------------------------------------------------

resource "aws_ecs_task_definition" "this" {
  container_definitions    = templatefile(var.templatefile, var.parameters)
  cpu                      = var.cpu
  execution_role_arn       = var.execution_role_arn
  family                   = var.family
  memory                   = var.memory
  network_mode             = var.network_mode
  requires_compatibilities = var.requires_compatibilities
  tags                     = merge(var.tags, { "Name" = var.ecs_task_definition_name })
  task_role_arn            = var.task_role_arn

  # --------------------------------------------------------------------------------
  # dynamicブロックを使用しない場合のvolumeブロックのサンプル
  # タスクに対してEFSをマウントしない場合は、volumeブロックは不要。
  # 既存のモジュールに影響を与えないようにdynamicブロックを用いてvolumeブロックを定義する。
  #
  # volume {
  #   name = "service-storage"
  #
  #   efs_volume_configuration {
  #     file_system_id          = aws_efs_file_system.fs.id
  #     root_directory          = "/opt/data"
  #     transit_encryption      = "ENABLED"
  #     transit_encryption_port = 2999
  #     authorization_config {
  #       access_point_id = aws_efs_access_point.test.id
  #       iam             = "ENABLED"
  #     }
  #   }
  # }
  #
  # --------------------------------------------------------------------------------

  dynamic "volume" {
    for_each = var.volume
    content {
      name = volume.value.name
      dynamic "efs_volume_configuration" {
        for_each = volume.value.efs_volume_configuration
        content {
          file_system_id          = efs_volume_configuration.value.file_system_id
          root_directory          = lookup(efs_volume_configuration.value, "root_directory", "/")
          transit_encryption      = lookup(efs_volume_configuration.value, "transit_encryption", "ENABLED")
          transit_encryption_port = lookup(efs_volume_configuration.value, "transit_encryption_port", null)
          dynamic "authorization_config" {
            for_each = efs_volume_configuration.value.authorization_config
            content {
              access_point_id = authorization_config.value.access_point_id
              iam             = lookup(authorization_config.value, "iam", "DISABLED")
            }
          }
        }
      }
    }
  }
}

# --------------------------------------------------------------------------------
# Amazon ECS Task Definition resource
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ecs_task_definition
# --------------------------------------------------------------------------------

data "aws_ecs_task_definition" "this" {
  task_definition = aws_ecs_task_definition.this.family
}
