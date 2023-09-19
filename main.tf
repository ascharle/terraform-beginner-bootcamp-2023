
terraform {
  required_providers {

    random = {
      source = "hashicorp/random"
      version = "3.5.1"
      
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
  }
}


provider "aws" {
 region = "eu-central-1"
}

provider "random" {
  # Configuration options
}

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-4h5ty"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
