
resource "aws_s3_bucket" "terraform-templates-aws-s3" {

  bucket = "terraform-templates-aws-s3.f1kart.com"

  acl = "private"

  tags = {
    Owner = "terraform-templates-aws-s3"
  }
}
