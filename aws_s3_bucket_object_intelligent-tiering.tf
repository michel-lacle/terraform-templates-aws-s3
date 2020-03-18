
resource "aws_s3_bucket_object" "s3-standard" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "storage_class_standard.txt"
  source = "storage_class_standard.txt"

  # most expensive storage tier
  storage_class = "STANDARD"
}
