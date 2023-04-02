terraform {
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "CHANGEME"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}
