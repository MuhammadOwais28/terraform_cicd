terraform {
  backend "s3" {
    bucket = "mytf-statefile-s3-293893048194"
    key    = "state"
    region = "us-east-1"
    dynamodb_table = "terraform-stlock"
  }
}
