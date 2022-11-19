provider "aws" {
  region = "us-east-1"
access_key = "AKIAYKZF26WRLU7GJIF2"
secret_key = "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"
}
resource "aws_instance" "web" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"

  tags = {
    Name = "terraworld"
  }
}