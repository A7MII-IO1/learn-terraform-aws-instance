terraform {
  cloud {
    organization = "hashicorp-remote"
    workspaces {
      name = "terraform-aws"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c1907b6d738188e5"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}
