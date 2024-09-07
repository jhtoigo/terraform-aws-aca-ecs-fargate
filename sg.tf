resource "aws_security_group" "main_ecs" {
  name   = format("%s-ecs", var.project_name)
  vpc_id = data.aws_ssm_parameter.vpc.value

  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = [
      "0.0.0.0/0"
    ]
  }
}

resource "aws_security_group_rule" "subnet_ranges" {
  type              = "ingress"
  cidr_blocks       = ["10.0.0.0/16"]
  from_port         = 0
  to_port           = 0
  description       = "Libera trafego para a VPC"
  protocol          = "-1"
  security_group_id = aws_security_group.main_ecs.id
}

