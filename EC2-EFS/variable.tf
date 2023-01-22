variable "ami-id" {
  description = "This variable is used to define ami id"
  default     = "ami-0cca134ec43cf708f"
}

variable "availability_zones" {
  default = "ap-south-1a"
}

variable "instance-type" {
  type    = string
  default = "t2.micro"
}

variable "security_groups" {
  type    = string
  default = "sg-0789041d2c427211e"
}

variable "subnet_id" {
  type    = string
  default = "subnet-0c90ca5c644af1fb8"
}