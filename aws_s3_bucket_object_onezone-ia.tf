
resource "aws_s3_bucket_object" "s3-onezone-ia" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "storage_class_onezone-ia.txt"
  source = "storage_class_onezone-ia.txt"

  # most expensive storage tier
  storage_class = "ONEZONE_IA"
}
