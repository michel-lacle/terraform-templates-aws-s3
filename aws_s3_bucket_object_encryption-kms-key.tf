# customer managed kms key
resource "aws_kms_key" "s3-kms-key" {
  description = "S3 KMS key 1"
  deletion_window_in_days = 7
}

resource "aws_s3_bucket_object" "s3-encryption-kms-key" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key = "encryption-kms-key.txt"
  source = "encryption-kms-key.txt"

  # customer supplied key
  kms_key_id = aws_kms_key.s3-kms-key.arn

  # most expensive storage tier
  storage_class = "INTELLIGENT_TIERING"
}
