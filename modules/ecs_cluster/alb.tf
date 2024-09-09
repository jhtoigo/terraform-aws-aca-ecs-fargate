resource "aws_security_group" "lb" {
  count  = var.lb_active ? 1 : 0
  name   = format("%s-load-balancer", var.project_name)
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

resource "aws_security_group_rule" "ingress_80" {
  count             = length(aws_security_group.lb) > 0 ? 1 : 0
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 80
  to_port           = 80
  description       = "Libera trafego na porta 80"
  protocol          = "tcp"
  security_group_id = aws_security_group.lb[0].id
}

resource "aws_security_group_rule" "ingress_443" {
  count             = length(aws_security_group.lb) > 0 ? 1 : 0
  type              = "ingress"
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  to_port           = 443
  description       = "Libera trafego na porta 443"
  protocol          = "tcp"
  security_group_id = aws_security_group.lb[0].id
}


resource "aws_lb" "main" {
  count              = var.lb_active ? 1 : 0
  name               = format("%s-ingress", var.project_name)
  internal           = var.load_balancer_internal
  load_balancer_type = var.load_balancer_type

  subnets = var.load_balancer_public_subnets

  security_groups = [
    aws_security_group.lb[0].id
  ]

  enable_cross_zone_load_balancing = false
  enable_deletion_protection       = false

}

resource "aws_lb_listener" "main" {
  count             = length(aws_lb.main) > 0 ? 1 : 0
  load_balancer_arn = aws_lb.main[count.index].arn
  port              = 80
  protocol          = "HTTP"
  default_action {
    type = "fixed-response"
    fixed_response {
      content_type = "text/plain"
      message_body = "LinuxTips ACA"
      status_code  = "200"
    }
  }
}
