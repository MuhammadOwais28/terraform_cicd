terraform {
  backend "s3" {
    bucket         = "mytf-statefile-s3-29389304819452"
    key            = "state"
    region         = "us-east-1"
    dynamodb_table = "terraform-stlock"
    encrypt = true
  }
}
