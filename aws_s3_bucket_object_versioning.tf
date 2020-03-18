
resource "aws_s3_bucket_object" "s3-versioning" {
  bucket = aws_s3_bucket.terraform-templates-aws-s3-versioning.bucket
  key    = "versioning.txt"
  source = "versioning.txt"

  # most expensive storage tier
  storage_class = "INTELLIGENT_TIERING"

  etag = filemd5("versioning.txt")

  acl = "public-read"
}
