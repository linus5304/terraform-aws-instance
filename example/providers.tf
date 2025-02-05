terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

variable "region" {
  type        = string
  default     = "us-east-1"
  description = "The AWS region to connect and run the tests in."
}
