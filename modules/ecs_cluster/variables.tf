variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

### Load Balancer

variable "lb_active" {
  description = "Create or not Load balancer"
  type        = bool
}

variable "load_balancer_type" {
  description = "Type of Load Balancer"
  type        = string
}

variable "load_balancer_internal" {
  description = "Internal or external lb"
  type        = string
}

variable "load_balancer_public_subnets" {
  description = "Load Balancer Public Subnets"
  type        = list(string)
}
variable "tags" {
  description = "Project TAGs"
  type        = map(string)
}

variable "capacity_providers" {
  description = "ECS Cluster capacity providers"
  type        = list(string)
  default     = ["FARGATE", "FARGATE_SPOT"]
}