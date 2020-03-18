
resource "aws_s3_bucket_object" "s3-standard" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3.bucket
  key    = "s3-standard"
  source = "sample.txt"

  # most expensive storage tier
  storage_class = "STANDARD"
}
