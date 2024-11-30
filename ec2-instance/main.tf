terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-central-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-0b5673b5f6e8f7fa7"
  instance_type = "t2.micro"
}