# bucket with versioning enabled
resource "aws_s3_bucket" "terraform-templates-aws-s3-versioning" {

  bucket = "terraform-templates-aws-s3-versioning.f1kart.com"

  acl = "public-read"

  versioning {
    enabled = true
  }

  tags = {
    Owner = "terraform-templates-aws-s3"
  }
}
