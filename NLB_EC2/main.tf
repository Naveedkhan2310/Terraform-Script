resource "aws_lb_target_group" "nlb" {
  name     = "application-nlb"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id
}

resource "aws_lb_target_group_attachment" "attach-nlb" {
  target_group_arn = aws_lb_target_group.nlb.arn
  target_id        = aws_instance.naveedec2.id
  port             = 80
}

resource "aws_lb" "nlb" {
  name               = "nlb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.security_groups]
  subnets = [var.subnet1,var.subnet2]
     enable_deletion_protection = false
}

resource "aws_lb_listener" "nlb_ec2" { 
load_balancer_arn = aws_lb.nlb.arn
  port              = "80" 
  protocol          = "HTTP"
  default_action {   
  type  = "forward"  
  target_group_arn = aws_lb_target_group.nlb.arn
  }
}
resource "aws_instance" "naveedec2" {
  ami           = var.ami-id
  instance_type = var.instance-type
  
  tags = {
    Name = "naveedec1"
  }
}