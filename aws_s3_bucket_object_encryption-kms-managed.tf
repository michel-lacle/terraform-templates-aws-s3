resource "aws_s3_bucket_object" "s3-encryption-kms-managed" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key = "encryption-kms-managed.txt"
  source = "encryption-kms-managed.txt"

  # aws managed key
  server_side_encryption = "aws:kms"

  # most expensive storage tier
  storage_class = "INTELLIGENT_TIERING"
}
