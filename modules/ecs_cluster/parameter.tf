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