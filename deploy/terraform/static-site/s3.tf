# deploy/terraform/static-site/s3.tf


resource "aws_s3_bucket" "website_bucket" {
  bucket = var.domain_name
  acl = "public-read"
  policy = data.aws_iam_policy_document.website_policy.json
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "Limite" {
  bucket = var.domain_name

  rule {
    status = "Disable"
    id     = "5d"
    filter {
      prefix = "motion" 
    }
    expiration {
      days = 5
    }
  }

  rule {
    status = "Enabled"
    id     = "3d"
    filter {
      prefix = "motion" 
    }
    expiration {
      days = 3
    }
  }

}

