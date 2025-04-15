# Setup Terraform
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

# Configure the AWS Provider
provider "aws" {
  region = "ap-southeast-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name        = var.vpc_name
    Environment = "Dev"
  }
}

# Create a Subnet
resource "aws_subnet" "example" {
  vpc_id            = aws_vpc.example.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-southeast-1a"

  tags = {
    Name        = var.subnet_name
    Environment = "Dev"
  }
}

# Create an EC2 Instance 
resource "aws_instance" "example" {
  ami                         = "ami-0c1907b6d738188e5"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.example.id
  associate_public_ip_address = true

  tags = {
    Name        = var.instance_name
    Environment = "Dev"
  }
}

# Create an S3 Bucket
resource "aws_s3_bucket" "example" {
  bucket = "tf-bucket-7768"

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
