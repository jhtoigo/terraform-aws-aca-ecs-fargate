output "load_balancer_dns" {
  value = try(aws_lb.main[*].dns_name)
}

output "load_balancer_listner" {
  value = try(aws_ssm_parameter.lb_listener[*].name)
}