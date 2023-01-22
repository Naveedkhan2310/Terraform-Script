variable "ami-id" {
  description = "This variable is used to define ami id"
  default     = "ami-0cca134ec43cf708f"
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "availability_zones" {
  default = "ap-south-1a"
}

variable "security_groups" {
  type    = string
  default = "sg-0789041d2c427211e"
}

variable "asg_vpc_zone_identifier" {
  default = ["subnet-0c90ca5c644af1fb8", "subnet-0c71a8f0324baac5f"]
}

variable "max_size" {
  default = 5
}

variable "min_size" {
  default = 1
}

variable "desired_capacity" {
  default = 2
}

variable "health_check_grace_period" {
  default = 300
}
 