resource "aws_s3_bucket_object" "s3-encryption-aes256" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key = "encryption-aes256.txt"
  source = "encryption-aes256.txt"

  # aws managed key
  server_side_encryption = "AES256"

  # most expensive storage tier
  storage_class = "INTELLIGENT_TIERING"
}
