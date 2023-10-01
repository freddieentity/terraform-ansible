terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
    ansible = {
      version = "~> 1.1.0"
      source  = "ansible/ansible"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "tinnt26"
  default_tags {
    tags = {
      CreatedBy      = "Terraform"
      OrchestratedBy = "Terraform"
      ServiceOwner   = "TinNT26"
      Creator        = "TinNT26"
      ProjectID      = "GHSPOC2019"
      Application    = "IaC"
    }
  }
}