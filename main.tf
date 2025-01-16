module "vpc" {
  source             = "./modules/vpc"
  cidr_block         = "10.0.0.0/16"
  azs                = ["us-east-1a", "us-east-1b", "us-east-1c"]
  public_subnets     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  private_subnets    = ["10.0.16.0/21", "10.0.24.0/21", "10.0.32.0/21"]
  database_subnets   = ["10.0.50.0/24", "10.0.51.0/24", "10.0.52.0/24"]
  tags               = var.tags
  project_name       = var.project_name
  nat_gateway_active = var.nat_gateway_active
}

module "ecs_cluster" {
  source = "./modules/ecs_cluster"

  project_name = var.project_name
  tags         = var.tags

  vpc_id = module.vpc.vpc_id

  ## Load Balancer
  lb_active                    = var.lb_active
  load_balancer_internal       = var.load_balancer_internal
  load_balancer_type           = var.load_balancer_type
  load_balancer_public_subnets = module.vpc.public_subnets
}