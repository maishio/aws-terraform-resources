# --------------------------------------------------------------------------------
# Amazon API Gateway Account
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/api_gateway_account
# --------------------------------------------------------------------------------

variable "cloudwatch_role_arn" {
  description = "ARN of an IAM role for CloudWatch (to allow logging & monitoring)."
  type        = string
  default     = null
}
