# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configuring Microsoft Provider
provider "aws" {
}