terraform {
  # Terraform version is optional to mention.
  # required_version = "~> 2.3"
  required_providers {
    local = {
      source  = "hashicorp/local"
      #version = "~> 2.0.0"
    }
  }
}