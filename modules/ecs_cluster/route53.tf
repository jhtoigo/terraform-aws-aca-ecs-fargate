resource "aws_route53_zone" "private" {
  name = format("%s.internal.com", var.project_name)

  vpc {
    vpc_id = var.vpc_id
  }
}

resource "aws_route53_record" "wildcard" {
  count   = length(aws_lb.internal) > 0 ? 1 : 0
  zone_id = aws_route53_zone.private.zone_id
  name    = format("*.%s.internal.com", var.project_name)
  type    = "A"

  alias {
    name                   = aws_lb.internal[0].dns_name
    zone_id                = aws_lb.internal[0].zone_id
    evaluate_target_health = true
  }
}