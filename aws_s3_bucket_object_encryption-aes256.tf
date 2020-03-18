
resource "aws_s3_bucket_object" "s3-encryption-aes256" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "encryption-aes256.txt"
  source = "encryption-aes256.txt"

  # most expensive storage tier
  storage_class = "INTELLIGENT_TIERING"
}
