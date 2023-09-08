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
  profile = "customcredprofile"
  region  = "ap-south-1"
}
provider "aws" {
  # Configuration options
  profile = "customcredprofile"
  region  = "us-east-1"
  alias = "virginia"
}