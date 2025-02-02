output "load_balancer_dns" {
  description = "Load Balancer DNS"
  value       = try(aws_lb.main[*].dns_name)
}

output "load_balancer_listner" {
  description = "Load Balancer Listener"
  value       = try(aws_ssm_parameter.lb_listener[*].name)
}

output "ssm_lb_arn" {
  description = "Load Balancer ARN"
  value       = try(aws_ssm_parameter.lb_arn[*].name)
}

output "internal_load_balancer_dns" {
  description = "Internal Load Balancer DNS"
  value       = try(aws_lb.internal[*].dns_name)
}

output "load_balancer_internal_listner" {
  description = "Internal Load Balancer Listener"
  value       = try(aws_ssm_parameter.lb_internal_listener[*].name)
}

output "ssm_lb_internal_arn" {
  description = "Internal Load Balancer ARN"
  value       = try(aws_ssm_parameter.lb_internal_arn[*].name)
}

output "cloudmap_ssm" {
  description = "CloudMap Namespace ID"
  value       = aws_ssm_parameter.cloudmap.name
}