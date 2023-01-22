# ec2 iam_role


resource "aws_iam_role" "ec2-role" {
  name = "ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

}

resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.ec2-role.name
}

resource "aws_instance" "web" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
 
}


#s3 iam-role

resource "aws_iam_role" "s3-role" {
  name = "s3-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "s3.amazonaws.com"
        }
      },
    ]
  })

}

resource "aws_iam_instance_profile" "s3_profile" {
  name = "s3_profile"
  role = aws_iam_role.s3-role.name
}

resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance-type
  iam_instance_profile = aws_iam_instance_profile.s3_profile.name
 
}


#rds iam-role

resource "aws_iam_role" "rds-role" {
  name = "rds-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "rds.amazonaws.com"
        }
      },
    ]
  })

}

resource "aws_iam_instance_profile" "rds_profile" {
  name = "rds_profile"
  role = aws_iam_role.rds-role.name
}

resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance-type
  iam_instance_profile = aws_iam_instance_profile.rds_profile.name
 
}