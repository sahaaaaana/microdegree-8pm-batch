terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  access_key = "xxxxx"
  secret_key = "xxxx"
}


resource "aws_instance" "myinstance01" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"
  count = "1"



  tags = {
    Name = "Server_1-W1"
  }

}
resource "aws_instance" "myinstance02" {
  ami           = "ami-007868005aea67c54"
  instance_type = "t2.micro"
  count = "1"

  tags = {
    Name = "Server_2-W1"
  }

}
