terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 5.0.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIA3LWLX2CGWOTDBEXG"
  secret_key = "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"
}