
resource "aws_s3_bucket" "naveed2310" {
  bucket = "naveed2310"
  tags = {
    Name        = "Naveed"
    Environment = "bucket"
  }
}

resource "aws_s3_bucket_acl" "s3-acl" {
  bucket = aws_s3_bucket.naveed2310.id
  acl    = "private"
}

resource "aws_iam_user" "iam" {
  name ="naveed"
}

resource "aws_iam_policy" "s3policy" {
  name        = "s3-policy"
  policy      = var.iam_policy
}  

resource "aws_iam_user_policy_attachment" "s3-attach" {
  user       = aws_iam_user.iam.name
  policy_arn = aws_iam_policy.s3policy.arn
}