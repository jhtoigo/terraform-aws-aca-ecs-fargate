output "load_balancer_dns" {
  value = module.ecs_cluster.load_balancer_dns
}
output "ssm_lb_arn" {
  value = module.ecs_cluster.ssm_lb_arn
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

output "ssm_alb_listener" {
  value = module.ecs_cluster.load_balancer_listner
}