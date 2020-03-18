
resource "aws_s3_bucket_object" "s3-intelligent-tiering" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "storage_class_intelligent-tiering.txt"
  source = "storage_class_intelligent-tiering.txt"

  # most expensive storage tier
  storage_class = "INTELLIGENT_TIERING"
}
