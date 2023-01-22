resource "aws_db_instance" "naveed-backups" {
  allocated_storage       = var.allocated_storage
  identifier              = var.identifier
  engine                  = var.engine
  engine_version          = var.engine_version
  instance_class          = var.instance_class
  name                    = var.name
  username                = var.username
  password                = var.password
  backup_retention_period = var.backup_retention_period
  storage_encrypted       = true
  skip_final_snapshot     = true
}

resource "aws_kms_key" "naveed-backup-key" {
  provider = "aws.replica"
}

resource "aws_db_instance_automated_backups_replication" "naveed-backup-replication" {
  source_db_instance_arn = aws_db_instance.naveed-backups.arn
  kms_key_id             = aws_kms_key.naveed-backup-key.arn
  provider = "aws.replica"
}