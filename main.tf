terraform {
  cloud {
    organization = "_cloudcte"

    workspaces {
      name = "api"
    }
  }
}


provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

variable "TFC_AWS_PLAN_ROLE_ARN" {
  type        = string
  description = "TFC_AWS_PLAN_ROLE_ARN"
}

variable "TFC_AWS_APPLY_ROLE_ARN" {
  type        = string
  description = "TFC_AWS_APPLY_ROLE_ARN"
}

variable "TFC_AWS_RUN_ROLE_ARN" {
  type        = string
  description = "TFC_AWS_RUN_ROLE_ARN"
}

variable "TFC_AWS_PROVIDER_AUTH" {
  default     = true
  description = "TFC_AWS_PROVIDER_AUTH"
}
