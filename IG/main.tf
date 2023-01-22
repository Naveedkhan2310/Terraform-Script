resource "aws_vpc" "naveed" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "naveed"
  }
}
resource "aws_internet_gateway" "naveed" {
  vpc_id = aws_vpc.naveed.id

  tags = {
    Name = "naveed"
  }
}