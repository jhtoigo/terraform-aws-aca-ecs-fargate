resource "aws_security_group" "lb_internal" {
  count  = var.lb_active ? 1 : 0
  name   = format("%s-internal-load-balancer", var.project_name)
  vpc_id = var.vpc_id

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}

resource "aws_security_group_rule" "internal_ingress_80" {
  count             = length(aws_security_group.lb_internal) > 0 ? 1 : 0
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 80
  to_port           = 80
  description       = "Libera trafego na porta 80"
  protocol          = "tcp"
  security_group_id = aws_security_group.lb_internal[0].id
}

resource "aws_security_group_rule" "internal_ingress_443" {
  count             = length(aws_security_group.lb_internal) > 0 ? 1 : 0
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  to_port           = 443
  description       = "Libera trafego na porta 443"
  protocol          = "tcp"
  security_group_id = aws_security_group.lb_internal[0].id
}

resource "aws_lb" "internal" {
  count              = var.lb_internal_active ? 1 : 0
  name               = format("%s-internal", var.project_name)
  internal           = true
  load_balancer_type = "application"

  subnets = var.load_balancer_private_subnets

  security_groups = [
    aws_security_group.lb_internal[0].id
  ]

  enable_cross_zone_load_balancing = false
  enable_deletion_protection       = false

}

resource "aws_lb_listener" "internal" {
  count             = length(aws_lb.internal) > 0 ? 1 : 0
  load_balancer_arn = aws_lb.internal[count.index].arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "LinuxTips Internal LB ACA"
      status_code  = "200"
    }
  }
}
