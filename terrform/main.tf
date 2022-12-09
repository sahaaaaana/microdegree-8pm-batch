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
  
}


resource "aws_instance" "myinstance01" {
  ami           = "ami-061ac2e015473fbe2" 
  instance_type = "t2.small"
  count = "1"
  

  
  tags = {
    Name = "Server_1-W1"
  }

}
resource "aws_instance" "myinstance02" {
  ami           = "ami-061ac2e015473fbe2" 
  instance_type = "t2.small"
  count = "1"
  
  tags = {
    Name = "Server_2-W1"
  }

}
