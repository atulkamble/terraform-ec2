terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-0953476d60561c955"
  instance_type = "t3.micro"
  count         = "1"
  tags = {
    Name = "MyServer"
  }
}
