resource "aws_ssm_parameter" "lb_arn" {
  count = var.lb_active ? 1 : 0
  name  = format("/%s/ecs/lb/id", var.project_name)
  value = aws_lb.main[count.index].arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_listener" {
  count = var.lb_active ? 1 : 0
  name  = format("/%s/ecs/lb/listenernet", var.project_name)
  value = aws_lb_listener.main[count.index].id
  type  = "String"
}

resource "aws_ssm_parameter" "lb_internal_arn" {
  count = var.lb_internal_active ? 1 : 0
  name  = format("/%s/ecs/lb_internal/id", var.project_name)
  value = aws_lb.internal[count.index].arn
  type  = "String"
}

resource "aws_ssm_parameter" "lb_internal_listener" {
  count = var.lb_internal_active ? 1 : 0
  name  = format("/%s/ecs/lb_internal/listenernet", var.project_name)
  value = aws_lb_listener.internal[count.index].id
  type  = "String"
}

resource "aws_ssm_parameter" "cloudmap" {
  name  = format("/%s/ecs/cloudmap/namespace", var.project_name)
  value = aws_service_discovery_private_dns_namespace.main.id
  type  = "String"
}