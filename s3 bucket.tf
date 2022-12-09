provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-cicd-project-${random_integer.bucket_appendix.id}"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "random_integer" "bucket_appendix_2" {
  min = 1
  max = 1000
}

resource "random_integer" "bucket_appendix" {
  min = 1
  max = 1000
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "terraform-cicd-project-${random_integer.bucket_appendix.id}"
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
