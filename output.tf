# output "ssm_vpc_id" {
#   value     = data.aws_ssm_parameter.vpc.value
#   sensitive = true
# }

output "load_balancer_dns" {
  value = aws_lb.main.dns_name
}