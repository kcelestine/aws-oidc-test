terraform {
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
