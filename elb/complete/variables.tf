# --------------------------------------------------------------------------------
# Elastic Load Balancer
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb
# --------------------------------------------------------------------------------

variable "access_logs" {
  description = "A list of access_logs objects for the dynamic block."
  type        = list(map(string))
  default     = []
}

variable "alb_name" {
  description = "Name of the load balancer."
  type        = string
  default     = null
}

variable "drop_invalid_header_fields" {
  description = "Indicates whether HTTP headers with invalid header fields are removed by the load balancer (true) or routed to targets (false). Defaults to `false`."
  type        = bool
  default     = false
}

variable "enable_cross_zone_load_balancing" {
  description = "Indicates whether cross-zone load balancing is enabled. Defaults to `false`."
  type        = bool
  default     = false
}

variable "enable_deletion_protection" {
  description = "Indicates whether deletion protection is enabled. Defaults to `false`."
  type        = bool
  default     = false
}

variable "enable_http2" {
  description = "Indicates whether HTTP/2 is enabled. Defaults to `true`."
  type        = bool
  default     = true
}

variable "idle_timeout" {
  description = "The time in seconds that the connection is allowed to be idle. Defaults to `60`."
  type        = number
  default     = 60
}

variable "internal" {
  description = "If true, the LB will be internal."
  type        = bool
  default     = false
}

variable "ip_address_type" {
  description = "Type of IP addresses used by the subnets for your load balancer. The possible values are `ipv4`and `dualstack`."
  type        = string
  default     = "ipv4"
}

variable "load_balancer_type" {
  description = "Type of load balancer. Defaults to `application`."
  type        = string
  default     = "application"
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the LB."
  type        = list(string)
  default     = []
}

variable "subnets" {
  description = "A list of subnet IDs to attach to the LB."
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the resource. "
  type        = map(string)
  default     = {}
}

# --------------------------------------------------------------------------------
# Elastic Load Balancer Target Group
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group
# --------------------------------------------------------------------------------

variable "deregistration_delay" {
  description = "The amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused."
  type        = number
  default     = 300
}

variable "lambda_multi_value_headers_enabled" {
  description = "Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings."
  type        = bool
  default     = false
}

variable "proxy_protocol_v2" {
  description = " Whether to enable support for proxy protocol v2 on Network Load Balancers. Defaults to `false`."
  type        = bool
  default     = false
}

variable "slow_start" {
  description = "Amount time for targets to warm up before the load balancer sends them a full share of requests. "
  type        = number
  default     = 0
}

variable "target_group_name" {
  description = "Name of the target group."
  type        = string
}

variable "target_port" {
  description = "Port on which targets receive traffic, unless overridden when registering a specific target."
  type        = number
  default     = null
}

variable "target_protocol" {
  description = "Protocol to use for routing traffic to the targets."
  type        = string
  default     = null
}

variable "target_type" {
  description = "Type of target that you must specify when registering targets with this target group."
  type        = string
  default     = "instance"
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
  default     = null
}

### Health Check ###

variable "health_check_enabled" {
  description = "Whether health checks are enabled. Defaults to `true`."
  type        = bool
  default     = true
}

variable "health_check_healthy_threshold" {
  description = "Number of consecutive health check successes required before considering a target healthy. Defaults to `3`."
  type        = number
  default     = 3
}

variable "health_check_interval" {
  description = "Time between health checks. Defaults to `30`."
  type        = number
  default     = 30
}

variable "health_check_matcher" {
  description = "Response codes to use when checking for a healthy responses from a target."
  type        = string
  default     = null
}

variable "health_check_path" {
  description = "Destination for the health check request."
  type        = string
  default     = null
}

variable "health_check_port" {
  description = "Port the load balancer uses when performing health checks on targets."
  type        = string
  default     = "traffic-port"
}

variable "health_check_protocol" {
  description = "Protocol the load balancer uses when performing health checks on targets. Defaults to `HTTP`."
  type        = string
  default     = "HTTP"
}

variable "health_check_timeout" {
  description = "Amount of time to wait when receiving a response from the health check, in seconds. Defaults to `5`."
  type        = number
  default     = 5
}

variable "health_check_unhealthy_threshold" {
  description = "Number of consecutive health check failures required before considering a target unhealthy. Defaults to `3`."
  type        = number
  default     = 3
}

### Stickiness ###

variable "stickiness_cookie_duration" {
  description = "Time period, in seconds, during which requests from a client should be routed to the same target. Defaults to `86400`."
  type        = number
  default     = 86400
}

variable "stickiness_enabled" {
  description = "Whether sticky sessions are enabled."
  type        = bool
  default     = false
}

variable "stickiness_type" {
  description = "Type of sticky sessions."
  type        = string
  default     = "lb_cookie"
}

# --------------------------------------------------------------------------------
# Elastic Load Balancer Listener
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener
# --------------------------------------------------------------------------------

variable "certificate_arn" {
  description = "ARN of the default SSL server certificate."
  type        = string
  default     = null
}

variable "default_action" {
  description = "A list of default action objects for the dynamic block."
  type        = any
  default     = []
}

variable "listener_port" {
  description = "Port on which the load balancer is listening."
  type        = string
  default     = null
}

variable "listener_protocol" {
  description = "Protocol for connections from clients to the load balancer."
  type        = string
  default     = null
}

variable "ssl_policy" {
  description = "Name of the SSL Policy for the listener."
  type        = string
  default     = null
}

# --------------------------------------------------------------------------------
# Elastic Load Balancer Listener Rule
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule
# --------------------------------------------------------------------------------

variable "action_type" {
  description = "Type of routing action."
  type        = string
  default     = "forward"
}

variable "create_lb_listener_rule" {
  description = "Whether to create an ELB listener rule."
  type        = bool
  default     = false
}

variable "listener_rule_priority" {
  description = "Priority for the rule between `1` and `50000`."
  type        = number
  default     = null
}

variable "values" {
  description = "Contains a single values item which is a list of path patterns to match against the request URL."
  type        = list(any)
  default     = []
}
