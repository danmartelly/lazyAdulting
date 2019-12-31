provider "aws" {
  profile = "default"
  region = "us-east-1"
}

resource "aws_s3_bucket" "bucket" {
  bucket = "daniels-terraform-bucket"
  acl = "public-read"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
