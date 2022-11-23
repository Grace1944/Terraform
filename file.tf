provider "aws" {
  region = "us-east-1"
access_key = "AKIAYKZF26WRDULF37OL"
secret_key = "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"
}

resource "aws_instance" "BackendDev" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "ping"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}