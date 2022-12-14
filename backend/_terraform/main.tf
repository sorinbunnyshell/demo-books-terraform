provider "aws" {}

resource "aws_s3_bucket" "demo_bunnyshell_books" {
  bucket = var.bucket_name
  acl = "public-read"

  cors_rule {
    allowed_headers = ["*"]
    allowed_methods = ["PUT", "POST"]
    allowed_origins = ["*"]
    expose_headers  = ["ETag"]
    max_age_seconds = 3000
  }
}
