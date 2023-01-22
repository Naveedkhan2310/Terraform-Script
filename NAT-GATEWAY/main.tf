resource "aws_vpc" "naveed" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "naveed"
  }
}

resource "aws_subnet" "naveed1" {
  vpc_id     = aws_vpc.naveed.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "naveed1"
  }
}

resource "aws_instance" "naveed-ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  
  
  tags = {
    Name = "ec2"
  }
}

resource "aws_eip" "naveed_lb" {
  instance = aws_instance.naveed-ec2.id
  vpc      = true
}

resource "aws_nat_gateway" "naveed_nat" {
  allocation_id = aws_eip.naveed_lb.id
  subnet_id     = aws_subnet.naveed1.id

  tags = {
    Name = "naveed-NAT"
  }
}