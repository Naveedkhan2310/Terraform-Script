resource "aws_efs_file_system" "naveed_efs" {
  creation_token = "my-product"

  tags = {
    Name = "naveed"
  }
}