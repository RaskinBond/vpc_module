# AWS Provider source and version being used
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuring AWS Provider
provider "aws" {
  region = "ap-south-2"
}