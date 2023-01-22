#Create IAM User

resource "aws_iam_user" "lb" {
  name = var.name
}

# Create IAM role

resource "aws_iam_role" "IAM_role" {
  name = var.name

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

# create IAM group

#resource "aws_iam_group" "group_test" {
#  name = "naveed_group"
#}