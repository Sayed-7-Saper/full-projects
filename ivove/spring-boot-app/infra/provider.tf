terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "1.1.5"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = var.region
  
}