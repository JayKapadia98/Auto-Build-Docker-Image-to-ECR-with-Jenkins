terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.40.0"
    }
  }

 backend "s3" {
    bucket = "jk-backend"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  # Configuration options
}