resource "aws_vpc" "naveed" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "naveed"
  }
}

#VPC Endpoint With S3

resource "aws_vpc_endpoint" "s3" {
  vpc_id       = aws_vpc.naveed.id
  service_name = "com.amazonaws.ap-south-1.s3"

  tags = {
    Environment = "dev"
  }
}

# VPC endpoint with DynamoDB

resource "aws_vpc_endpoint" "dynamodb" {
  vpc_id       = aws_vpc.naveed.id
  service_name = "com.amazonaws.ap-south-1.dynamodb"

  tags = {
    Environment = "dev"
  }
}