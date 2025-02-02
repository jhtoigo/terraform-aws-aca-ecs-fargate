## Stack

region       = "us-east-1"
tags         = { "Project" = "linuxtips-aca", "Environment" = "dev" }
project_name = "linuxtips-aca-ecs"

## VPC

nat_gateway_active = true

## Load balancer

lb_active = true

lb_internal_active = true

load_balancer_internal = false

load_balancer_type = "application"
