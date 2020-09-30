output "website_endpoint" {
  description = "website endpoint generated by AWS when S3 bucket is configured with a website"
  value       = aws_s3_bucket.blouger.website_endpoint
}