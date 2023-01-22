variable "ami-id"{
    
    default = "ami-0cca134ec43cf708f"
}

variable "instance-type"{
    type = string
    default = "t2.micro"
}

variable "aws-region" {
    default = "ap-south-1"
}