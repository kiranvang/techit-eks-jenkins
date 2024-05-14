terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
   
  backend "s3" {
    bucket = "terraform-eks-s3bucket"
    key    = "eks/terraform.tfstate"
    region = "us-east-1"

  }
}




provider "aws" {
  region = "us-east-1"
}
