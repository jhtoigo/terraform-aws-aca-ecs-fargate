# output "ssm_vpc_id" {
#   value     = data.aws_ssm_parameter.vpc.value
#   sensitive = true
# }

# output "load_balancer_dns" {
#   value = aws_lb.main.dns_name
# }

output "ssm_public_subnet_1a" {
  value     = data.aws_ssm_parameter.ssm_private_subnet_1a
  sensitive = true
}