provider "aws" {
    region = "ap-south-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "myec2"  {
    ami = "ami-0cca134ec43cf708f"
    instance_type = "t2.micro"
}

