provider "aws" {
  region     = local.region
  access_key = local.access_key
  secret_key = local.secret_key
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.57.0"
    }
  }
}
