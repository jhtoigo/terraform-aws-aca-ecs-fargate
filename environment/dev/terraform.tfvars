region       = "us-east-1"
tags         = { "Project" = "linuxtips-aca-ecs", "Environment" = "dev" }
project_name = "linuxtips-aca-ecs"

ssm_vpc_id = "/linuxtips-project/vpc/vpc_id"

ssm_public_subnet_1 = "/linuxtips-project/vpc/subnet-public-us-east-1a"

ssm_public_subnet_2 = "/linuxtips-project/vpc/subnet-public-us-east-1b"

ssm_public_subnet_3 = "/linuxtips-project/vpc/subnet-public-us-east-1c"

ssm_private_subnet_1 = "/linuxtips-project/vpc/subnet-private-us-east-1a"

ssm_private_subnet_2 = "/linuxtips-project/vpc/subnet-private-us-east-1b"

ssm_private_subnet_3 = "/linuxtips-project/vpc/subnet-private-us-east-1c"

ssm_database_subnet_1 = "/linuxtips-project/vpc/subnet-database-us-east-1a"

ssm_database_subnet_2 = "/linuxtips-project/vpc/subnet-database-us-east-1a"

ssm_database_subnet_3 = "/linuxtips-project/vpc/subnet-database-us-east-1a"

## Load balancer

load_balancer_internal = false

load_balancer_type = "application"

## ECS Cluster 

node_ami = "ami-09d3335e2eaf06692"

node_instance_type = "t3.micro"

node_volume_size = "30"

node_volume_type = "gp3"

cluster_on_demand_min_size = 1

cluster_on_demand_max_size = 3

cluster_on_demand_desired_size = 2

cluster_spot_min_size = 1

cluster_spot_max_size = 3

cluster_spot_desired_size = 2