
resource "aws_s3_bucket_object" "s3-glacier" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "storage_class_glacier.txt"
  source = "storage_class_glacier.txt"

  # most expensive storage tier
  storage_class = "GLACIER"
}
