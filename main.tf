terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
  }

  required_version = ">= 1.0.0"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_vpc" "dev" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "Dev-Test"
  }
}

resource "aws_subnet" "dev1" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "192.168.1.0/24"
  tags = {
    Name = "Dev-001"
  }
}

resource "aws_subnet" "dev2" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "192.168.2.0/24"
  tags = {
    Name = "Dev-002"
  }
 }

resource "aws_subnet" "dev3" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = "192.168.3.0/24"
  tags = {
    Name = "Dev-003"
  }
 }
