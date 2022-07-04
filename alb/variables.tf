# --------------------------------------------------------------------------------
# Application Load Balancer variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
# --------------------------------------------------------------------------------

variable "alb_name" {
  type    = string
  default = null
}

variable "load_balancer_type" {
  type    = string
  default = "application"
}

variable "internal" {
  type    = bool
  default = false
}

variable "security_groups" {
  type    = list(string)
  default = []
}

variable "subnets" {
  type    = list(string)
  default = []
}

variable "idle_timeout" {
  type    = number
  default = 60
}

variable "enable_cross_zone_load_balancing" {
  type    = bool
  default = false
}

variable "enable_deletion_protection" {
  type    = bool
  default = false
}

variable "enable_http2" {
  type    = bool
  default = true
}

variable "ip_address_type" {
  type    = string
  default = "ipv4"
}

variable "drop_invalid_header_fields" {
  type    = bool
  default = false
}

variable "access_logs" {
  type    = list(map(string))
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}

# --------------------------------------------------------------------------------
# Application Load Balancer Target Group variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group
# --------------------------------------------------------------------------------

variable "target_group_name" {
  type    = string
  default = null
}

variable "vpc_id" {
  type    = string
  default = null
}

variable "target_port" {
  type    = number
  default = null
}

variable "target_protocol" {
  type    = string
  default = null
}

variable "target_type" {
  type    = string
  default = "instance"
}

variable "deregistration_delay" {
  type    = number
  default = 300
}

variable "slow_start" {
  type    = number
  default = 0
}

variable "proxy_protocol_v2" {
  type    = bool
  default = false
}

variable "lambda_multi_value_headers_enabled" {
  type    = bool
  default = false
}

variable "health_check_enabled" {
  type    = bool
  default = true
}

variable "health_check_interval" {
  type    = number
  default = 60
}

variable "health_check_path" {
  type    = string
  default = null
}

variable "health_check_port" {
  type    = string
  default = "traffic-port"
}

variable "health_check_protocol" {
  type    = string
  default = "HTTP"
}

variable "health_check_timeout" {
  type    = number
  default = null
}

variable "health_check_healthy_threshold" {
  type    = number
  default = 2
}

variable "health_check_unhealthy_threshold" {
  type    = number
  default = 2
}

variable "health_check_matcher" {
  type    = string
  default = null
}

# --------------------------------------------------------------------------------
# Application Load Balancer Listener variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener
# --------------------------------------------------------------------------------

variable "certificate_arn" {
  type    = string
  default = null
}

variable "default_action" {
  type    = any
  default = []
}

variable "listener_port" {
  type    = string
  default = null
}

variable "listener_protocol" {
  type    = string
  default = "HTTP"
}

variable "ssl_policy" {
  type    = string
  default = null
}

# --------------------------------------------------------------------------------
# Application Load Balancer Listener Rule variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule
# --------------------------------------------------------------------------------

variable "create_alb_listener_rule" {
  type    = bool
  default = false
}

variable "listener_rule_priority" {
  type    = number
  default = null
}


variable "action_type" {
  type    = string
  default = "forward"
}

variable "listener_rule_condition_values" {
  type    = list(any)
  default = []
}

# --------------------------------------------------------------------------------
# Amazon Route53 Record variable
# @see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record
# --------------------------------------------------------------------------------

variable "evaluate_target_health" {
  type    = bool
  default = true
}

variable "record_name" {
  type = string
}

variable "type" {
  type = string
}

variable "zone_id" {
  type = string
}
