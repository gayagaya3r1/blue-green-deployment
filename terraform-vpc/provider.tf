terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.35.0"
    }
  }


 backend "s3" {
    bucket   = "remote-roboshop"
    key = "vpc-demo"
    region = "us-east-1"
    dynamodb_table = "Roboshop-Locking"
  }
}

provider "aws" {
  # Configuration options
  region="us-east-1"
}