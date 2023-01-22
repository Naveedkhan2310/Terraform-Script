#create vpc
resource "aws_vpc" "naveed_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "naveed_VPC"
  }
}


#create public subnet
resource "aws_subnet" "naveed_open_subnet" {
  vpc_id            = aws_vpc.naveed_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "naveed"
  }
}


#create internet gateway
resource "aws_internet_gateway" "naveed_ig" {
  vpc_id = aws_vpc.naveed_vpc.id

  tags = {
    Name = "naveed_ig"
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.naveed_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.naveed_ig.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.naveed_ig.id
  }

  tags = {
    Name = "Public_rt"
  }
}

resource "aws_route_table_association" "naveed_open-subnet" {
  subnet_id      = aws_subnet.naveed_open_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

#create security group
resource "aws_security_group" "web_sg" {
  name   = "HTTP and SSH"
  vpc_id = aws_vpc.naveed_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#create public instance
resource "aws_instance" "naveed_instance" {
  ami           = "ami-074dc0a6f6c764218"
  instance_type = "t2.micro"

  subnet_id                   = aws_subnet.naveed_open_subnet.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

   tags = {
        Name: "naveed_ins2"
    }
}

