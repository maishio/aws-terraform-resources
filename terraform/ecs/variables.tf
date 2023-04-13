# --------------------------------------------------------------------------------
# Amazon ECS on AWS Fargate 構築 Terraform テンプレート 属性定義
# --------------------------------------------------------------------------------

# --------------------------------------------------------------------------------
# Amazon CloudWatch Log Group variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group
# --------------------------------------------------------------------------------

variable "kms_key_id" {
  type    = string
  default = null
}

variable "log_group_name" {
  type = string
}

variable "retention_in_days" {
  type    = number
  default = 0
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Amazon ECS Cluster variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster
# --------------------------------------------------------------------------------

variable "ecs_cluster_name" {
  type    = string
  default = null
}

variable "setting_name" {
  type    = string
  default = "containerInsights"
}

variable "setting_value" {
  type    = string
  default = "enabled"
}

# --------------------------------------------------------------------------------
# Amazon ECS Cluster Capacity Providers variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_cluster_capacity_providers
# --------------------------------------------------------------------------------

variable "capacity_providers" {
  type    = list(string)
  default = []
}

variable "default_capacity_provider_strategy" {
  type    = list(map(string))
  default = []
}

# --------------------------------------------------------------------------------
# Amazon ECS Service variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_service
# --------------------------------------------------------------------------------

variable "capacity_provider_strategy" {
  type    = list(map(string))
  default = []
}

variable "deployment_controller_type" {
  type    = string
  default = "ECS"
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "ecs_service_name" {
  type = string
}

variable "health_check_grace_period_seconds" {
  type    = number
  default = 0
}

variable "launch_type" {
  type = string
  #  default     = "FARGATE"
  default = null
}

variable "load_balancer" {
  type    = list(map(string))
  default = []
}

variable "network_configuration_assign_public_ip" {
  type    = bool
  default = false
}

variable "network_configuration_security_groups" {
  type    = list(string)
  default = []
}

variable "network_configuration_subnets" {
  type    = list(string)
  default = []
}

# --------------------------------------------------------------------------------
# Amazon ECS Task Definition variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ecs_task_definition
# --------------------------------------------------------------------------------

variable "cpu" {
  type    = string
  default = "256"
}

variable "execution_role_arn" {
  type    = string
  default = null
}

variable "ecs_task_definition_name" {
  type    = string
  default = null
}

variable "family" {
  type = string
}

variable "memory" {
  type    = string
  default = "512"
}

variable "network_mode" {
  type    = string
  default = "awsvpc"
}

variable "parameters" {
  type    = map(string)
  default = {}
}

variable "requires_compatibilities" {
  type    = list(any)
  default = ["FARGATE"]
}

variable "task_role_arn" {
  type    = string
  default = null
}

variable "templatefile" {
  type    = string
  default = null
}

variable "volume" {
  type    = any
  default = []
}
