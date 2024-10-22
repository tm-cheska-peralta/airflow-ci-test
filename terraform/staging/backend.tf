terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "dpd-de-sandbox-tf-state-staging-ch"
    key            = "aws/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "dwh-terraform-lock-staging-ch"
    profile        = "staging-account-ch"
  }
}
