variable "ami-id" {
  description = "This variable is used to define ami id"
  default     = "ami-0cca134ec43cf708f"
}

variable "aws-region" {
  default = "ap-south-1a"
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "availability_zone" {
  default = "ap-south-1a"
}

variable "size" {
  type = number
  default = 40
}

variable "security_groups" {
  default = ["subnet-0c90ca5c644af1fb8", "subnet-0c71a8f0324baac5f"]
}