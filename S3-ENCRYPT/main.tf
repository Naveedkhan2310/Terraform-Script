

resource "aws_kms_key" "naveedkey" {
  deletion_window_in_days = 10
}

resource "aws_s3_bucket" "naveeds3-encrypt" {
  bucket = "naveed-encrypt"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "naveed1" {
  bucket = aws_s3_bucket.naveeds3-encrypt.bucket

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.naveedkey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}