terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }  
  
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "aws-oidc-test"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_vpc" "main2" {
  cidr_block = "10.1.0.0/16"
}

resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
  }
}
