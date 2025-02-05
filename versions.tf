terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.23.1"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "udemy-terraform-learning"
    
    workspaces {
      name = "udemy-terraform-learning"
    }
  }
}
