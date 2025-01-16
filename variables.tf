variable "region" {
  description = "AWS Region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "tags" {
  description = "Tags for resources"
  type        = map(string)
}

### VPC

variable "nat_gateway_active" {
  description = "Create or not NAT Gateways"
  type        = bool
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

variable "capacity_providers" {
  type = list(string)
}