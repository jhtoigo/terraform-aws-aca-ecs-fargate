output "load_balancer_dns" {
  value = try(aws_lb.main[*].dns_name)
}