

resource "aws_instance" "myec2" {

    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
    key_name = "my-keypair"

    connection {

      type ="ssh"
      user = "ec2-user"
      private_key = file("./terraform-key.pem")
      host = self.public_ip
    }
    

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}