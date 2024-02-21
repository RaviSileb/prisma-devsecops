provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "ed54663d-4d43-4277-a571-7bce3abfef8f"
    git_commit           = "8b6be82e30eba6cdcd53615b198a9915e50e9e52"
    git_file             = "code/s3.tf"
    git_last_modified_at = "2024-02-21 14:54:03"
    git_last_modified_by = "ivar.belis@gmail.com"
    git_modifiers        = "ivar.belis"
    git_org              = "RaviSileb"
    git_repo             = "prisma-devsecops"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
