resource "aws_lb" "nlb" {
  name               = "naveednlb"
  internal           = false
  load_balancer_type = "network"
  subnets            = [var.subnet]

  enable_deletion_protection = false
}