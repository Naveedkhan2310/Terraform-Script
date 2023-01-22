resource "aws_ebs_volume" "naveed_ebs" {
  availability_zone = var.availability_zone
  size              = var.size
  tags = {
    Name = "NaveedEBS1"
  }
}

resource "aws_instance" "naveed_web" {
  ami               = var.ami-id
  availability_zone = var.availability_zone
  instance_type     = var.instance-type

  tags = {
    Name = "naveed_ec2"
  }
}

resource "aws_volume_attachment" "ebs" {
  device_name =  "/dev/sdh"
  volume_id   = aws_ebs_volume.naveed_ebs.id
  instance_id = aws_instance.naveed_web.id
}

