resource "aws_vpc" "naveed" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "naveed"
  }
}
resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.naveed.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "naveed"
  }
}