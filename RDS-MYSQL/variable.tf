variable "identifier" {
  default = "database-1"
}
variable "allocated_storage" {
  default = 20
}
variable "storage_type" {
 default = "gp2" 
}
variable "engine" {
  default = "MySQL"
}
variable "engine_version" {
  default = "8.0.30"
}
variable "instance_class" {
  default = "db.t2.micro"
}
variable "name" {
  default = "naveed"
}
variable "username" {
 default =  "naveed"
}
variable "password" {
  default = "admin1234"
}
variable "parameter_group_name" {
  default = "default.mysql8.0"
}
variable "subnet1" {
  default = "subnet-0c90ca5c644af1fb8"
}
variable "subnet2" {
  default = "subnet-0c71a8f0324baac5f"
}