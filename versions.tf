terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.20"
    }
  }
}

provider "aws" {
    region = var.aws_region
    profile = "default"
}