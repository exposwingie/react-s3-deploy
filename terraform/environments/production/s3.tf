locals {
  full_bucket_name = "${var.bucket_name}-production"
}

resource "aws_s3_bucket" "react_bucket" {
  bucket = locals.full_bucket_name
  acl    = "public-read"

  policy = <<POLICY
{
  "Id": "bucket_policy_site",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "bucket_policy_site_main",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${locals.full_bucket_name}/*",
      "Principal": "*"
    }
  ]
}
POLICY

  website {
    index_document = "index.html"
  }
}
