resource "aws_s3_bucket" "creasty-com" {
    bucket = "creasty.com"
    acl    = "private"
    policy = <<POLICY
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::creasty.com/*"
    }
  ]
}
POLICY
    website {
        index_document = "index.html"
        error_document = "index.html"
    }
}

resource "aws_s3_bucket" "delta-test-1" {
    bucket = "delta-test-1"
    acl    = "private"
}

resource "aws_s3_bucket" "creasty-infra" {
    bucket = "creasty-infra"
    acl    = "private"
}
