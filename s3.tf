resource "aws_s3_bucket" "bucket" {
  bucket = "my-tf-laurenj-bucket-for-change"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My bucket"
  }
}