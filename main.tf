module "ecs_cluster" {
  source = "./modules/ecs_cluster"

  project_name = var.project_name
  tags         = var.tags

  vpc_id = data.aws_ssm_parameter.vpc.value

  # ASG Template
  node_ami                = var.node_ami
  node_instance_type      = var.node_instance_type
  node_volume_size        = var.node_volume_size
  node_volume_type        = var.node_volume_type
  asg_vpc_zone_identifier = [data.aws_ssm_parameter.ssm_private_subnet_1a.value, data.aws_ssm_parameter.ssm_private_subnet_1b.value, data.aws_ssm_parameter.ssm_private_subnet_1c.value]

  ## Load Balancer
  lb_active                    = true
  load_balancer_internal       = var.load_balancer_internal
  load_balancer_type           = var.load_balancer_type
  load_balancer_public_subnets = [data.aws_ssm_parameter.ssm_public_subnet_1a.value, data.aws_ssm_parameter.ssm_public_subnet_1b.value, data.aws_ssm_parameter.ssm_public_subnet_1c.value]

  ## ASG Size
  cluster_on_demand_desired_size = var.cluster_on_demand_desired_size
  cluster_on_demand_min_size     = var.cluster_on_demand_min_size
  cluster_on_demand_max_size     = var.cluster_on_demand_max_size

  ## ASG Spot Size
  spot_enabled              = false
  cluster_spot_desired_size = var.cluster_on_demand_desired_size
  cluster_spot_min_size     = var.cluster_spot_min_size
  cluster_spot_max_size     = var.cluster_spot_max_size
}