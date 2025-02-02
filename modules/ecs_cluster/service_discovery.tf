resource "aws_service_discovery_private_dns_namespace" "main" {
  name        = format("%s.discovery.com", var.project_name)
  description = "Private DNS namespace for ECS service discovery"
  vpc         = var.vpc_id
}