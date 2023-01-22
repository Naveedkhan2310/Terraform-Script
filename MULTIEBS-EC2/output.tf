
output "ec2output" {
  value = aws_instance.naveed_web.id
}

output "ebsoutput" {
  value = aws_ebs_volume.naveed_ebs.id
}