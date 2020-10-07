provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = var.aws_region
}

data "aws_caller_identity" "current" {}

module "terraform_init" {
  source = "git@github.com:codigube/terraform-aws-terraform-init?ref=change-dynamodb-billingmode"
  name_prefix = "tf-backend"

  tags = {
    environment = "dev"
    terraform   = "True"
  }
}