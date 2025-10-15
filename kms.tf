resource "aws_kms_key" "S3-KMS" {
  description             = "An example symmetric encryption KMS key"
  enable_key_rotation     = true
  deletion_window_in_days = 7
}

resource "aws_s3_bucket" "exam_logs_neethi" {
  bucket = var.s3_bucket_name

  tags = {
    Name        = var.s3_bucket_name
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_encryption" {
  bucket = aws_s3_bucket.exam_logs_neethi.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.S3-KMS.arn
      sse_algorithm     = "aws:kms"
    }
  }
}