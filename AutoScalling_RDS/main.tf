resource "aws_db_instance" "allocated_storage" {
  identifier           = var.identifier
  db_name              = var.db-name
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true

  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
}
