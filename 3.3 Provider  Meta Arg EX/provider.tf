terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.15.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "ap-south-1"
  profile = "customcredprofile"
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "customcredprofile"
  alias   = "virginia"
}