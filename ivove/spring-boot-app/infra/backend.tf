terraform {
  backend "s3" {
    bucket         = "testteatsol3330"
    key            = "ivove/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "backend"
  }

}