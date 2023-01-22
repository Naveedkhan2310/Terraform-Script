resource "aws_route53_zone" "dev" {
  name = "naveed.hello"

  tags = {
    Environment = "dev"
  }
}