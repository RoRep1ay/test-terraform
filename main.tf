terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "random_uuid" "test" {
}

resource "aws_s3_bucket" "qweqwe" {
  bucket = "my-tf-test-bucket-${random_uuid.test.result}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

