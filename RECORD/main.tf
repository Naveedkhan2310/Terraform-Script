resource "aws_route53_zone" "naveed" {
  name = "dev.com"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "www-dev" {
  zone_id = aws_route53_zone.naveed.zone_id
  name    = "www"
  type    = "CNAME"
  ttl     = 5
  records = ["dev.com"]
}
  