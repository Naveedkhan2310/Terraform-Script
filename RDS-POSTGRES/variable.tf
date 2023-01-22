

variable "identifier" {
  default = "postgresql"
}
variable "allocated_storage" {
  default = 10
}
variable "storage_type" {
 default = "gp2" 
}
variable "engine" {
  default = "postgres"
}
variable "engine_version" {
  default = 13.7
}
variable "instance_class" {
  default = "db.t3.micro"
}
variable "name" {
  default = "db_name"
}
variable "username" {
 default =  "mahira"
}
variable "password" {
  default = "admin1234"
}
variable "parameter_group_name" {
  default = "default.postgres13"
}
variable "subnet1" {
  default = "subnet-0c90ca5c644af1fb8"
}
variable "subnet2" {
  default = "subnet-0c71a8f0324baac5f"
}