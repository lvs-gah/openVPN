terraform{
  required_version = ">= 0.13.1"

required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = ">= 4.7"
  }
  random = {
    source  = "hashicorp/random"
    version = ">= 3.1.3"
  }  
}
}
provider "aws" {
    region = var.region
}