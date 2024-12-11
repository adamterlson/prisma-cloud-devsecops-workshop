provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "c77401c4-9360-495d-b286-1abdf372c307"
    git_commit           = "ebaed0e5bfc3b300c787c7d5273eab9816d634de"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-12-11 17:40:06"
    git_last_modified_by = "adam.terlson@gmail.com"
    git_modifiers        = "adam.terlson"
    git_org              = "adamterlson"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
