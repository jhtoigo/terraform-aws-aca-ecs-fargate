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

### ASG templete

variable "node_instance_type" {
  description = "Ec2 Instance type"
  type        = string
}

variable "node_volume_size" {
  description = "Cluster EC2 node volume size"
}

variable "node_volume_type" {
  description = "Cluster EC2 node volume type"
}

variable "node_ami" {
  description = "ECS Cluster AMI"
  type        = string
}

variable "asg_vpc_zone_identifier" {
  description = "List of subnet IDs to launch Ecs cluster nodes"
  type        = list(string)
}

### ASG Spot

variable "cluster_spot_desired_size" {
  description = "ASG Spot Desired dize"
  type        = number
}

variable "cluster_spot_min_size" {
  description = "ASG Spot Desired dize"
  type        = number
}

variable "cluster_spot_max_size" {
  description = "ASG Spot Desired dize"
  type        = number
}

variable "spot_enabled" {
  description = "Create or not ASG with spot instances"
  type        = bool
}

### ASG

variable "cluster_on_demand_desired_size" {
  description = "ASG Spot Desired dize"
  type        = number
}

variable "cluster_on_demand_max_size" {
  description = "ASG Spot Desired dize"
  type        = number
}

variable "cluster_on_demand_min_size" {
  description = "ASG Spot Desired dize"
  type        = number
}

variable "tags" {
  description = "Project TAGs"
  type        = map(string)
}

