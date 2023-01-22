resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main_vpc"
  }
}


resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "public_subnet"
  }
}


resource "aws_instance" "public" {
  ami           = var.ami-id
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id

  tags = {
    Name = "public_subnet"
  }
}