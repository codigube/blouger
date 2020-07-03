provider "github" {
  token      = var.github_token
  version = "2.9.0"
}

resource "github_repository" "blouger" {
  name        = "blouger"
  description = "A Serverless blog framework and pipeline using Hugo, Github, AWS S3 and Terraform"
}