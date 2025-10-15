terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
  backend "s3" {
    bucket = "terraform-202501-tfstate"
    key    = "env/dev/terraform.tfstate"
    region = "ca-central-1"
  }
}