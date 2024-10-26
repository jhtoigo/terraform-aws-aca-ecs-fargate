## Stack

region       = "us-east-1"
tags         = { "Project" = "linuxtips-aca", "Environment" = "dev" }
project_name = "linuxtips-aca-ecs"

## VPC

nat_gateway_active = false

## Load balancer

lb_active = true

load_balancer_internal = false

load_balancer_type = "application"

## ECS Cluster 

node_ami = "ami-09d3335e2eaf06692"

node_instance_type = "t3.micro"

node_volume_size = "30"

node_volume_type = "gp3"

## ASG On demand
cluster_on_demand_min_size = 1

cluster_on_demand_max_size = 3

cluster_on_demand_desired_size = 3

## Asg spot

spot_enabled = false

cluster_spot_min_size = 1

cluster_spot_max_size = 3

cluster_spot_desired_size = 3