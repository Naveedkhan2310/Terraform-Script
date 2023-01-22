

variable "ami-id" {
  description = "This variable is used to define ami id"
  default     = "ami-0cca134ec43cf708f"
}

variable "aws-region" {
  default = "ap-south-1"
}
variable "instance-type"{
    type = string
    default = "t2.micro"
}


variable "vpc_id" {
  default = "vpc-0ec435249a69491af"
}

variable "security_groups" {
  type    = string
  default = "sg-0789041d2c427211e"
}

variable "subnet1" {
  default = "subnet-0c90ca5c644af1fb8"
}
variable "subnet2" {
  default = "subnet-0c71a8f0324baac5f"
}
