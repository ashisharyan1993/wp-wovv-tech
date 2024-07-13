<<<<<<< HEAD
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
=======
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
>>>>>>> d0dbbf2adc2dab0f4a0b5e3ff9278a7fc4d98edd
