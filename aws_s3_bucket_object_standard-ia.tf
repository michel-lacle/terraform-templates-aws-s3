
resource "aws_s3_bucket_object" "s3-standard-ia" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "storage_class_standard-ia.txt"
  source = "storage_class_standard-ia.txt"

  # most expensive storage tier
  storage_class = "STANDARD_IA"
}
