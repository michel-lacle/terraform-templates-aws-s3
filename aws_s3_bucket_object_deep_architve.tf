
resource "aws_s3_bucket_object" "s3-deep-archive" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "storage_class_deep-archive.txt"
  source = "storage_class_deep-archive.txt"

  # most expensive storage tier
  storage_class = "DEEP_ARCHIVE"
}
