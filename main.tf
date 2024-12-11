resource "aws_s3_bucket" "parvezbucket" {
  bucket = var.bucketname
}

resource "aws_s3_bucket_ownership_controls" "parvezbucket" {
  bucket = aws_s3_bucket.parvezbucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "parvezbucket" {
  bucket = aws_s3_bucket.parvezbucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "parvezbucket_acl" {
  depends_on = [
    aws_s3_bucket_ownership_controls.parvezbucket,
    aws_s3_bucket_public_access_block.parvezbucket,
  ]

  bucket = aws_s3_bucket.parvezbucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.parvezbucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
  acl          = "public-read"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.parvezbucket.id
  key          = "error.html"
  source       = "error.html"
  content_type = "text/html"
  acl          = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.parvezbucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

resource "aws_s3_bucket_policy" "parvezbucket_policy" {
  bucket = aws_s3_bucket.parvezbucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "s3:GetObject"
        Effect    = "Allow"
        Resource  = "${aws_s3_bucket.parvezbucket.arn}/*"
        Principal = "*"
      }
    ]
  })
}
