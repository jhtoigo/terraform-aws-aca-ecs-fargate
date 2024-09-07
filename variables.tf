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

variable "ssm_vpc_id" {}

variable "ssm_public_subnet_1" {}

variable "ssm_public_subnet_2" {}

variable "ssm_public_subnet_3" {}

variable "ssm_private_subnet_1" {}

variable "ssm_private_subnet_2" {}

variable "ssm_private_subnet_3" {}

variable "ssm_database_subnet_1" {}

variable "ssm_database_subnet_2" {}

variable "ssm_database_subnet_3" {}

## Balancer

variable "load_balancer_internal" {}

variable "load_balancer_type" {}

## ECS General

variable "node_instance_type" {}

variable "node_ami" {}
