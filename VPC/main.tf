resource "aws_vpc" "naveed" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "naveed"
  }
}