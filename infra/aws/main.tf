terraform {

  backend "s3" {
    key            = "cloudrigo/aws.tfstate"
    bucket         = "tf-backend-terraform-state"
    dynamodb_table = "tf-backend-terraform-state"
    acl            = "bucket-owner-full-control"
    region         = "eu-west-1"
  }
}

provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

locals {
            s3_bucket_name = "my-blouger-site-bucket"
}

resource "aws_s3_bucket" "blouger" {
  bucket = local.s3_bucket_name

  acl = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  policy = <<EOF
{
  "Version": "2008-10-17",
  "Statement": [
    {
      "Sid": "PublicReadForGetBucketObjects",
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::${local.s3_bucket_name}/*"
    }
  ]
}
EOF
}