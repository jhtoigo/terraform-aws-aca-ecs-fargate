output "load_balancer_dns" {
  description = "Load Balancer DNS"
  value       = module.ecs_cluster.load_balancer_dns
}

output "internal_load_balancer_dns" {
  description = "Internal Load Balancer DNS"
  value       = module.ecs_cluster.internal_load_balancer_dns
}

output "ssm_lb_arn" {
  description = "SSM Parameter ID to Load Balancer ARN"
  value       = module.ecs_cluster.ssm_lb_arn
}

output "ssm_alb_listener" {
  description = "SSM Parameter ID to Load Balancer Listener"
  value       = module.ecs_cluster.load_balancer_listner
}

output "ssm_vpc_id" {
  description = "SSM Parameter ID to VPC ID"
  value       = module.vpc.ssm_vpc_id
}

output "ssm_public_subnets_id" {
  description = "SSM Parameter IDs to public subnets IDs"
  value       = module.vpc.ssm_public_subnets_id
}

output "ssm_private_subnets_id" {
  description = "SSM Parameter IDs to private subnets IDs"
  value       = module.vpc.ssm_private_subnets_id
}

output "ssm_database_subnets_id" {
  description = "SSM parameter IDs to database subnets IDs"
  value       = module.vpc.ssm_database_subnets_id
}
